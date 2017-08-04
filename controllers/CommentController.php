<?php

namespace controllers;

use components\Auth;

class CommentController extends Controller
{
    protected $methodsNeededAuthorization = ['create'];

    protected function create()
    {
        if (isset($_POST['comment_btn'])) {
            $rules = [
                'comment_body' => ['required', 'max_length(100)'],
            ];
            $validation_result = \SimpleValidator\Validator::validate($_POST, $rules);
            $commentMapper = spot()->mapper('models\Comments');
            if ($validation_result->isSuccess()) {
                $commentMapper->create([
                    'body' => $_POST['comment_body'],
                    'users_id' => Auth::getUser()->id,
                    'post_id' => $_POST['post_id'],
                ]);
                header("Location: /");
            } else {
                var_dump($validation_result->getErrors());
            }
        }
    }

    protected function deleteComment($commentId)
    {
        $commentMapper = spot()->mapper('models\Comments');
        $entity = $commentMapper->first(['id =' => $commentId]);
        if ($entity) {
            $commentMapper->delete($entity);
            header("Location: /");
        }

    }
}