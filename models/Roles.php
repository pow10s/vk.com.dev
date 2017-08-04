<?php


namespace models;

use Spot\Entity;
use Spot\EntityInterface;
use Spot\MapperInterface;

class Roles extends Entity
{
    protected static $table = 'roles';

    const ROLE_USER = 2;

    public static function fields()
    {
        return [
            'id' => ['type' => 'integer', 'autoincrement' => true, 'primary' => true],
            'name' => ['type' => 'string', 'required' => true, 'unique' => false],
            'description' => ['type' => 'string', 'required' => false, 'unique' => false],

        ];
    }

    public static function relations(MapperInterface $mapper, EntityInterface $entity)
    {
        return [
            'users' => $mapper->hasOne($entity, 'models\Users', 'id')
        ];
    }

}