<?php

namespace controllers;

use components\Auth;
use components\View;
use components\ImgUploader;

class PostController extends Controller
{
    protected $methodsNeededAuthorization = [
        'create',
        'edit',
        'storePost',
        'getAllUserPosts',
        'getUserPost',
        'updateUserPost',
        'deleteUserPost',
        'like',
    ];

    protected function create()
    {
        $view = new View('create_post');
        $view->assign();
    }

    protected function storePost()
    {
        if (isset ($_POST['submit_btn'])) {
            $rules = [
                'title' => ['required', 'max_length(50)'],
                'body' => ['max_length(500)'],

            ];
            $validation_result = \SimpleValidator\Validator::validate($_POST, $rules);
            $postsMapper = spot()->mapper('models\Posts');
            if ($validation_result->isSuccess()) {
                try {
                    $imgUrl = ImgUploader::imgUploader($_FILES['img_url'], '../public/uploads/', 900, 300);
                    $newPost = $postsMapper->create([
                        'title' => $_POST['title'],
                        'body' => $_POST['body'],
                        'img_url' => $imgUrl,
                        'commentable' => $_POST['is_commentable'],
                        'users_id' => Auth::getUser()->id,
                    ]);
                    header("Location: /user-profile");
                } catch (\Exception $exception) {
                    echo $exception->getMessage();
                }
            } else {
                var_dump($validation_result->getErrors());
            }
        }
    }

    protected function getAllUserPosts()
    {
        $postsMapper = spot()->mapper('models\Posts');
        $posts = $postsMapper->all()
            ->where(['users_id =' => Auth::getUser()->id]);
        $view = new View('user_posts');
        $view->assign('posts', $posts);
    }

    protected function edit($postId)
    {
        $postsMapper = spot()->mapper('models\Posts');
        $post = $postsMapper->all()
            ->where(['users_id =' => Auth::getUser()->id, 'id =' => $postId])
            ->first();
        $view = new View('update_post');
        $view->assign('post', $post);
    }

    protected function updateUserPost($postId)
    {
        if (isset ($_POST['submit_btn'])) {
            $rules = [
                'title' => ['required', 'max_length(50)'],
                'body' => ['max_length(500)'],

            ];
            $validation_result = \SimpleValidator\Validator::validate($_POST, $rules);
            $postsMapper = spot()->mapper('models\Posts');
            if ($validation_result->isSuccess()) {
                $entity = $postsMapper->first(['users_id =' => Auth::getUser()->id, 'id =' => $postId]);
                if ($entity) {
                    $entity->title = $_POST['title'];
                    $entity->body = $_POST['body'];
                    $entity->img_url = ImgUploader::imgUploader($_FILES['img_url'], '../public/uploads/', 900, 300);
                    $entity->commentable = $_POST['is_commentable'];
                    $entity->updated_at = new \DateTime();
                    $postsMapper->update($entity);
                    header("Location: /user-profile");
                }
            } else {
                var_dump($validation_result->getErrors());
            }
        }
    }

    protected function deleteUserPost($postId)
    {
        $postsMapper = spot()->mapper('models\Posts');
        $entity = $postsMapper->first(['users_id =' => Auth::getUser()->id, 'id =' => $postId]);
        if ($entity) {
            $postsMapper->delete($entity);
            header("Location: /user-profile");
        }
    }

    protected function like()
    {
        $count = 0;
        $message = '';
        $error = true;
        if ($_POST['id']) {
            $postMapper = spot()->mapper('models\Posts');
            $post = $postMapper->first(['id =' => $_POST['id']]);
            if ($post) {
                $post->likes = $post->likes + 1;
                $postMapper->update($post);
                $count = $post->likes ? $post->likes : 0;
                $error = false;
            }
        } else {
            $error = true;
            $message = 'Post not found';
        }
        $out = [
            'error' => $error,
            'message' => $message,
            'count' => $count,
        ];

        header('Content-Type: text/json; charset=utf-8');
        echo json_encode($out);
    }
}