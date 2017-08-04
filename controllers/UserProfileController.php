<?php

namespace controllers;

use components\Auth;
use components\ImgUploader;
use components\View;

class UserProfileController extends Controller
{
    protected $methodsNeededAuthorization = ['index', 'updateUserData'];

    protected function index()
    {
        $view = new View('user_profile');
        $user = Auth::getUser();
        $view->assign('userData', Auth::getUser());
    }

    protected function editProfile()
    {
        $view = new View('update_profile');
        $user = Auth::getUser();
        $view->assign('userData', Auth::getUser());
    }

    protected function updateUserData()
    {
        if (isset ($_POST['edit_btn'])) {
            $rules = [
                'edit_full_name' => ['required', 'max_length(50)'],
                'edit_email' => ['required', 'email'],
                'edit_password' => [
                    'required',
                    'equals(:edit_password_verify)'
                ],
                'edit_password_verify' => ['required'],
                'edit_birth' => ['required'],

            ];
            $validation_result = \SimpleValidator\Validator::validate($_POST, $rules);
            $userMapper = spot()->mapper('models\Users');
            if ($validation_result->isSuccess()) {
                $user = Auth::getUser();
                $user->full_name = $_POST['edit_full_name'];
                $user->email = $_POST['edit_email'];
                $user->password = password_hash($_POST['edit_password'], PASSWORD_BCRYPT, ['cost' => 12]);
                $user->birth = new \DateTime($_POST['edit_birth']);
                $user->img_url = ImgUploader::imgUploader($_FILES['edit_img'], '../public/uploads/', 200, 200);
                $userMapper->update($user);
                header("Location: /user-profile");
            } else {
                var_dump($validation_result->getErrors());
            }
        }

    }

}