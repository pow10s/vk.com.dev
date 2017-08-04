<?php

namespace exceptions;

class UserExceptionsHandler
{
    private $exception;

    public function __construct(\Exception $exception)
    {
        $this->exception = $exception;
    }

    public function handle()
    {
        echo $this->exception->getMessage();
    }

}