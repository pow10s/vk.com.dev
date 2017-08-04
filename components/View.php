<?php


namespace components;

class View
{
    private $data = [];

    private $render = false;

    public function __construct($template)
    {
        try {
            $file = __DIR__ . '/../' . '/views/' . strtolower($template) . '.php';
            if (file_exists($file)) {
                $this->render = $file;
            } else {
                throw new \Exception('Template ' . $template . ' not found!');
            }
        } catch (\Exception $e) {
            echo $e->getMessage();
        }
    }

    public function assign($variable = '', $value = '')
    {
        $this->data[$variable] = $value;
    }

    public function __destruct()
    {
        extract($this->data);
        include($this->render);
    }

}