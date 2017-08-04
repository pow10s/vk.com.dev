<?php

namespace controllers;

use components\View;
use Strana\Paginator;

class IndexController extends Controller
{
    protected $methodsNeededAuthorization = [];

    protected function showAll()
    {


        $postsMapper = spot()->mapper('models\Posts');
        $posts = $postsMapper->all()
            ->with(['comments', 'users'])
            ->order(['created_at' => 'DESC'])
            ->toArray();
        $strana = new Paginator();
        $paginator = $strana->perPage(20)->make($posts);
        $view = new View('index');
        $view->assign('paginator', $paginator);
    }

}