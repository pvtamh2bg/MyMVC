<?php
class Controller{
    public function loadModel($model){
            require_once 'application/models/'.$model.'.php';
            return new $model;
    }

    public function views($view, $data=array()){
        if(file_exists('application/views/'.$view.'.php')){
            require_once 'application/views/'.$view.'.php';
        }
    }
}