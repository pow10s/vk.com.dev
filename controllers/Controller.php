<?php

namespace controllers;

use components\Auth;
use exceptions\UserExceptions;

class Controller
{
    protected $methodsNeededAuthorization = [];

    protected $methodsForAdmins = [];

    public function __call($method, $args)
    {

        if (!method_exists($this, $method)) {
            throw new UserExceptions("Method doesn't exist");
        }

        if (in_array($method, $this->methodsNeededAuthorization)) {
            if (!Auth::isLogged()) {
                throw new UserExceptions("You are not authorized to perform this action");
            }
        }
        elseif (in_array($method, $this->methodsForAdmins)) {
            if (!Auth::isAdmin()) {
                throw new UserExceptions("You are not admin to perform this action.");
            }
        }
        call_user_func_array([$this, $method], $args);

    }
}