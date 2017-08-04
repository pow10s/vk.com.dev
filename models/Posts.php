<?php


namespace models;

use Spot\EntityInterface as Entity;
use Spot\MapperInterface as Mapper;

class Posts extends \Spot\Entity
{
    protected static $table = 'posts';

    public static function fields()
    {
        return [
            'id' => ['type' => 'integer', 'primary' => true, 'autoincrement' => true],
            'title' => ['type' => 'string', 'primary' => false, 'required' => true],
            'body' => ['type' => 'text', 'primary' => false, 'required' => false],
            'img_url' => ['type' => 'string', 'primary' => false, 'required' => false],
            'users_id' => ['type' => 'integer', 'primary' => false, 'required' => false],
            'likes' => [
                'type' => 'integer',
                'primary' => false,
                'required' => false,
                'default' => true,
                'value' => '0'
            ],
            'commentable' => [
                'type' => 'boolean',
                'primary' => false,
                'required' => false,
            ],
            'updated_at' => ['type' => 'datetime', 'primary' => false, 'required' => false]
        ];
    }

    public static function relations(Mapper $mapper, Entity $entity)
    {
        return [
            'users' => $mapper->belongsTo($entity, 'models\Users', 'users_id'),
            'comments' => $mapper->hasMany($entity, 'models\Comments', 'post_id'),
        ];
    }

    public static function isCommentable($postId)
    {
        $postMapper = spot()->mapper('models\Posts');
        $post = $postMapper->first(['id =' => $postId]);
        return true ? $post->commentable == '1' : false;
    }

}