<?php


namespace components;

class ImgUploader
{
    public static function imgUploader($file, $path, $imgX = 200, $imgY = 200)
    {
        $handle = new \upload($file);
        if ($handle->uploaded) {
            $handle->file_new_name_body = md5(time());
            $time = md5(time());
            $handle->image_resize = true;
            $handle->image_x = $imgX;
            $handle->image_ratio_y = $imgY;
            $handle->process($path);
            if ($handle->processed) {
                $handle->clean();
                return '/uploads/' . $time .'.jpg';
            }
        }
    }
}