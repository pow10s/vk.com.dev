<?php


namespace components;

class Cookie
{
    public static function set($name, $value, $expired)
    {
        return setcookie($name, $value, time() + $expired);
    }

    public static function get($name)
    {
        return isset($_COOKIE[$name]) && $_COOKIE[$name] ? $_COOKIE[$name] : false;
    }

    public static function remove($name)
    {
        return setcookie($name, '', time() - 3600);
    }
}