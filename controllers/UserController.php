<?php

namespace controllers;

use components\Cookie;
use components\View;
use models\Roles;
use components\Auth;

class UserController extends Controller
{
    protected $methodsNeededAuthorization = ['logout'];

    protected function allUsers()
    {
        $userMapper = spot()->mapper('models\Users');
        $users = $userMapper->all();
        $view = new View('users_list');
        $view->assign('users', $users);
    }

    protected function getUser($id)
    {
        $userMapper = spot()->mapper('models\Users');
        $userData = $userMapper->all()
            ->where(['id =' => $id])
            ->with(['posts'])
            ->first();
        $view = new View('single_user');
        $view->assign('userData', $userData);

    }

    protected function show()
    {
        $view = new View('auth_form');
        $view->assign();
    }

    protected function register()
    {
        if (!Auth::isLogged()) {
            if (isset($_POST['registration_btn'])) {
                $rules = [
                    'full_name' => ['required', 'max_length(50)'],
                    'email' => ['required', 'email'],
                    'password' => [
                        'required',
                        'equals(:password_verify)'
                    ],
                    'password_verify' => ['required']
                ];
                $validation_result = \SimpleValidator\Validator::validate($_POST, $rules);
                $userMapper = spot()->mapper('models\Users');
                if ($validation_result->isSuccess()) {
                    $userMapper->create([
                        'full_name' => $_POST['full_name'],
                        'email' => $_POST['email'],
                        'password' => password_hash($_POST['password'], PASSWORD_BCRYPT, ['cost' => 12]),
                        'role_id' => Roles::ROLE_USER,
                        'banned' => '0'
                    ]);
                    header("Location: /auth");
                } else {
                    var_dump($validation_result->getErrors());
                }
            }
        } else {
            header("Location: /");
        }
    }

    protected function login()
    {
        try {
            if (isset ($_POST['login_btn'])) {
                if (!Auth::isLogged()) {
                    $auth = new Auth();
                    $rules = [
                        'password_login' => ['required', 'max_length(50)'],
                        'email_login' => ['required', 'email'],
                    ];
                    $validation_result = \SimpleValidator\Validator::validate($_POST, $rules);
                    if ($validation_result->isSuccess()) {
                        $auth->login($_POST['email_login'], $_POST['password_login'], 24 * 3600);
                        header("Location: /user-profile");
                    } else {
                        var_dump($validation_result->getErrors());
                    }

                }
            }
        } catch (\Exception $e) {
            echo $e->getMessage();
        }

    }

    protected function logout()
    {
        if (Cookie::get('upd')) {
            Cookie::remove('upd', 24 * 3600);
            header("Location: /");
        }

    }

}