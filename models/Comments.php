<?php


namespace models;

use Spot\EntityInterface as Entity;
use Spot\MapperInterface as Mapper;

class Comments extends \Spot\Entity
{
    protected static $table = 'comments';

    public static function fields()
    {
        return [
            'id' => ['type' => 'integer', 'primary' => true, 'autoincrement' => true],
            'body' => ['type' => 'text', 'required' => true, 'default' => false],
            'users_id' => ['type' => 'integer', 'primary' => false, 'required' => false],
            'post_id' => ['type' => 'integer', 'primary' => false, 'required' => false],

        ];
    }

    public static function relations(Mapper $mapper, Entity $entity)
    {
        return [
            'users' => $mapper->belongsTo($entity, 'models\Users', 'users_id'),
            'posts' => $mapper->belongsTo($entity, 'models\Posts', 'id'),

        ];
    }


    public static function getUserByCommentId($id)
    {
        $commentMapper = spot()->mapper('models\Comments');
        $user = $commentMapper->all()
            ->where(['id =' => $id])
            ->with(['users'])
            ->toArray();
        return $user;
    }

}