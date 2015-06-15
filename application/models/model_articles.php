<?php
class Model_articles extends Model{
    public $_db= null,$_data;

    public function __construct(){
        $this->_db = self::getInstance();
    }
    public function addItem($fields = array()){
        if(!$this->_db->insert('news',$fields)){
            throw new Exception('Khong them duoc bai viet');
        }
    }
    public function updateItem($id,$fields = array()){
        if(!$this->_db->update('news',$id,$fields)){
            throw new Exception('Khong update được bài viết');
        }
    }
    public function getAllArticles(){
        $articles=$this->_db->getAll('news');
        if($articles->count() != 0){
            return $articles->results();
        }
        return null;
    }

    public function getCategory(){
        $category = $this->_db->getAll('category');
        if($category->count() != 0) {
            return $category->results();
        }
        return null;
    }

    public function getItem_Category($pid){
        $pid = (int)$pid;
        $item = $this->_db->get('news', array('parentid', '=', $pid));
        if($item->count() != 0){
            return $item->results();
        }
        return null;
    }
    public function data(){
        return $this->_data;
    }
}