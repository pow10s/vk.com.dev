<?php
function exception_handler($exception)
{

    if ($exception instanceof \exceptions\UserExceptions) {

        (new \exceptions\UserExceptionsHandler($exception))->handle();

  }
}
set_exception_handler('exception_handler');