<?php


namespace models;

use Spot\Entity;
use Spot\EntityInterface;
use Spot\MapperInterface;

class Users extends Entity
{
    protected static $table = 'users';

    const STATUS_BANNED = 1;

    const STATUS_UNBANNED = 0;

    public static function fields()
    {
        return [
            'id' => ['type' => 'integer', 'autoincrement' => true, 'primary' => true],
            'full_name' => ['type' => 'string', 'required' => true, 'unique' => false],
            'email' => ['type' => 'string', 'required' => true, 'unique' => true],
            'password' => ['type' => 'string', 'required' => true],
            'birth' => ['type' => 'date', 'required' => false],
            'img_url' => ['type' => 'string', 'required' => false, 'value' => 'http://ulafull.ru/wp-content/uploads/2017/02/vk1.jpg'],
            'role_id' => ['type' => 'integer', 'required' => false],
            'banned' => ['type' => 'boolean'],
        ];
    }

    public static function relations(MapperInterface $mapper, EntityInterface $entity)
    {
        return [
            'roles' => $mapper->belongsTo($entity, 'models\Roles', 'role_id'),
            'posts' => $mapper->hasMany($entity, 'models\Posts', 'users_id')->order(['created_at' => 'DESC']),
            'comments' => $mapper->hasMany($entity, 'models\Comments', 'users_id')->order(['created_at' => 'DESC']),
        ];
    }

}