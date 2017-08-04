<?php

require_once '../vendor/autoload.php';

function spot()
{
    static $spot;
    if ($spot == null) {
        $cfg = new \Spot\Config();
        $cfg->addConnection('mysql', [
            'dbname' => DB_NAME,
            'user' => DB_USER,
            'password' => DB_PASSWORD,
            'host' => DB_HOST,
            'driver' => DB_DRIVER
        ]);
        $spot = new \Spot\Locator($cfg);
    }
    return $spot;
}
require_once __DIR__ . '/../routes.php';

$httpMethod = $_SERVER['REQUEST_METHOD'];
$uri = $_SERVER['REQUEST_URI'];

if (false !== $pos = strpos($uri, '?')) {
    $uri = substr($uri, 0, $pos);
}
$uri = rawurldecode($uri);
$routeInfo = $dispatcher->dispatch($httpMethod, $uri);
switch ($routeInfo[0]) {
    case FastRoute\Dispatcher::NOT_FOUND:
        echo 'Route not found';
        break;
    case FastRoute\Dispatcher::METHOD_NOT_ALLOWED:
        $allowedMethods = $routeInfo[1];
        break;
    case FastRoute\Dispatcher::FOUND:
        $handler = $routeInfo[1];
        $vars = $routeInfo[2];
        list($class, $method) = explode("/", $handler, 2);
        $class = "controllers\\" . $class;
        call_user_func_array(array(new $class, $method), $vars);
        break;
}