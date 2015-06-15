<?php
class App{
    protected $controller = 'home';
    protected $method     = 'index';
    protected $params     = [];
    private $_forder      = 'frontend';

    public function __construct(){
        $url = $this->parseUrl();
        if(file_exists('application/controllers/'  .$url[0].'/'.$url[1]. '.php')){
            $this->_forder = $url[0];
            $this->controller = $url[1];
            unset($url[0]);
            unset($url[1]);
        }

        require_once 'application/controllers/' .$this->_forder.'/'.$this->controller. '.php';
        $appClass = ucfirst($this->controller);
        $this->controller = new $appClass();

        if(isset($url[2])){
            if(method_exists($this->controller,$url[2])){
                $this->method = $url[2];
                unset($url[2]);
            }else{
               Redirect::to(404);
            }
        }

        $this->params = $url ? array_values($url) : [];
        call_user_func_array([$this->controller,$this->method],$this->params);

    }

    public function parseUrl(){
        if(isset($_GET['url'])){
            return explode('/' ,filter_var(rtrim($_GET['url'], '/'), FILTER_SANITIZE_URL));
        }
    }
}