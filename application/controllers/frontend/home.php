<?php
class Home extends Controller{
    public function index(){
        $item= (array)$this->loadModel('model_articles')->getAllArticles();
        $data['list_item']=$item;
        $data['template']='frontend/home/index';
        $this->views('frontend/layout/home',(isset($data)) ? $data : null);
    }
    public function getItemflowCate($id){
        $id=filter_var($id, FILTER_VALIDATE_INT);
        $item = (array)($this->loadModel('Model_articles')->getItem_Category($id));
        $data['list_items']=$item;
        $data['template']='frontend/category/index';
        $this->views('frontend/layout/home',(isset($data)) ? $data : null);
    }
}