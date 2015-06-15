<?php

class Home extends Controller {
   private $_auth;
   public function __construct(){
       $this->_auth = $this->loadModel('model_users');
       if(!$this->_auth->isLoggedIn()){
           Redirect::to('backend/users/login');
       }
   }
    public function index(){
        $data['auth']=$this->_auth->data()->name;
        $articles = $this->loadModel('model_articles')->getAllArticles();
        $data['template']='backend/home/index';
        $this->views('backend/layout/home',(isset($data)) ? $data : NULL);
    }
}