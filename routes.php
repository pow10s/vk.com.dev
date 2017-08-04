<?php

$dispatcher = FastRoute\simpleDispatcher(function (\FastRoute\RouteCollector $r) {
    $r->addRoute('GET', '/', 'IndexController/showAll');
    $r->addRoute('POST', '/', 'CommentController/create');
    $r->addRoute('GET', '/users', 'UserController/allUsers');
    $r->addRoute('GET', '/user/{id:\d+}', 'UserController/getUser');
    $r->addRoute('GET', '/admin/user/ban/{id:\d+}', 'AdminController/banUser');
    $r->addRoute('GET', '/admin/user/unban/{id:\d+}', 'AdminController/unBanUser');
    $r->addRoute('GET', '/admin/post/delete/{id:\d+}', 'AdminController/deletePost');
    $r->addRoute('GET', '/admin/post/edit/{id:\d+}', 'AdminController/editPost');
    $r->addRoute('POST', '/admin/post/edit/{id:\d+}', 'AdminController/updatePost');
    $r->addRoute('GET', '/comment/delete/{id:\d+}', 'CommentController/deleteComment');
    $r->addRoute('POST', '/like', 'PostController/like');
    $r->addRoute('GET', '/auth', 'UserController/show');
    $r->addRoute('POST', '/register', 'UserController/register');
    $r->addRoute('POST', '/login', 'UserController/login');
    $r->addRoute('GET', '/logout', 'UserController/logout');
    $r->addRoute('GET', '/user-profile', 'UserProfileController/index');
    $r->addRoute('POST', '/user-profile/edit', 'UserProfileController/updateUserData');
    $r->addRoute('GET', '/user-profile/edit', 'UserProfileController/editProfile');
    $r->addRoute('GET', '/user-profile/posts', 'PostController/getAllUserPosts');
    $r->addRoute('GET', '/user-profile/posts/create', 'PostController/create');
    $r->addRoute('POST', '/user-profile/posts/create', 'PostController/storePost');
    $r->addRoute('GET', '/user-profile/post/{id:\d+}', 'PostController/getUserPost');
    $r->addRoute('GET', '/user-profile/post/edit/{id:\d+}', 'PostController/edit');
    $r->addRoute('POST','/user-profile/post/edit/{id:\d+}', 'PostController/updateUserPost');
    $r->addRoute('GET', '/user-profile/post/delete/{id:\d+}', 'PostController/deleteUserPost');
});