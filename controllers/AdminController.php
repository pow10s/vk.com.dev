<?php

namespace controllers;

use components\View;
use components\ImgUploader;
use models\Users;

class AdminController extends Controller
{
    protected $methodsForAdmins = [
        'banUser',
        'unBanUser',
        'deletePost',
        'editPost',
        'updatePost',
    ];

    protected function banUser($id)
    {
        $userMapper = spot()->mapper('models\Users');
        $entity = $userMapper->first(['id =' => $id]);
        if ($entity) {
            $entity->banned = Users::STATUS_BANNED;
            $userMapper->update($entity);
            header("Location: /users");
        }
    }

    protected function unBanUser($id)
    {
        $userMapper = spot()->mapper('models\Users');
        $entity = $userMapper->first(['id =' => $id]);
        if ($entity) {
            $entity->banned = Users::STATUS_UNBANNED;
            $userMapper->update($entity);
            header("Location: /users");
        }
    }

    protected function deletePost($postId)
    {
        $postsMapper = spot()->mapper('models\Posts');
        $entity = $postsMapper->first(['id =' => $postId]);
        if ($entity) {
            $postsMapper->delete($entity);
            header("Location: /users");
        }
    }

    protected function editPost($postId)
    {
        $postsMapper = spot()->mapper('models\Posts');
        $post = $postsMapper->all()
            ->where(['id =' => $postId])
            ->first();
        $view = new View('update_post');
        $view->assign('post', $post);
    }

    protected function updatePost($postId)
    {
        if (isset ($_POST['submit_btn'])) {
            $rules = [
                'title' => ['required', 'max_length(50)'],
                'body' => ['max_length(500)'],

            ];
            $validation_result = \SimpleValidator\Validator::validate($_POST, $rules);
            $postsMapper = spot()->mapper('models\Posts');
            if ($validation_result->isSuccess()) {
                $entity = $postsMapper->first(['id =' => $postId]);
                if ($entity) {
                    $entity->title = $_POST['title'];
                    $entity->body = $_POST['body'];
                    $entity->img_url = ImgUploader::imgUploader($_FILES['img_url'], '../public/uploads/', 700, 300);
                    $entity->commentable = $_POST['is_commentable'];
                    $entity->updated_at = new \DateTime();
                    $postsMapper->update($entity);
                    header("Location: /users");
                }
            } else {
                var_dump($validation_result->getErrors());
            }
        }
    }
}