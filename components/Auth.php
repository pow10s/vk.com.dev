<?php


namespace components;

class Auth
{
    public function login($email, $password, $authenticationTime = 3600)
    {
        $userMapper = spot()->mapper('models\Users');
        $user = $userMapper->select(['email', 'password', 'id', 'banned'])
            ->where(['email =' => $email])
            ->first();
        if (!$user) {
            throw new \Exception('User not found');
        }
        if ($user->banned) {
            throw new \Exception('You are banned');
        }
        if (!$this->comparePassword($user->id, $password)) {
            throw new \Exception('Passwords do not match');
        }
        Cookie::set('upd', $user->email . ',' . md5($user->email . HASH_SECRET), 24 * 3600);
    }

    public function comparePassword($userId, $passwordForCompare)
    {
        $userMapper = spot()->mapper('models\Users');
        $user = $userMapper->select(['password'])
            ->where(['id =' => $userId])
            ->first();
        return $user ? password_verify($passwordForCompare, $user->password) : false;
    }

    public static function isLogged()
    {
        if (!$cookie = Cookie::get('upd')) {
            return false;
        }
        list($email, $cookie_hash) = explode(',', $cookie);
        return md5($email . HASH_SECRET) == $cookie_hash;
    }

    public static function getUser()
    {
        list($email) = explode(',', Cookie::get('upd'));
        $userMapper = spot()->mapper('models\Users');
        $user = $userMapper->all()
            ->where(['email =' => $email])
            ->with(['posts', 'comments', 'roles'])
            ->first();
        return $user ? $user : false;
    }

    public static function isAdmin()
    {
        return  (self::getUser() && self::getUser()->roles->name == 'admin')  ? true : false;
    }
}