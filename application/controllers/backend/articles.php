<?php
class Articles extends Controller{
    private $_auth;
    public function __construct(){
        $this->_auth = $this->loadModel('model_users');
        if(!$this->_auth->isLoggedIn()){
            Redirect::to('backend/users/login');
        }
    }

    public function item(){
        $data['auth']=$this->_auth->data()->name;
        $item = (array)($this->loadModel('model_articles')->getAllArticles());
        if(Input::exists()) {
            $chk = Input::get('chk');
            if(isset($chk) && count($chk) != 0 ){
                foreach($chk as $key => $id) {
                    $itemdel= array($this->loadModel('model_articles')->_db->get('news',array('id', '=', $id)));
                    if(!isset($itemdel) || count($itemdel) == 0) break;
                    $this->loadModel('model_articles')->_db->delete('news',array('id', '=', $id));
                }
                Redirect::to('backend/articles/item');
            }
        }
        $data['item']=$item;
        $data['category']= (array)($this->loadModel('model_articles')->getCategory());
        $data['template']='backend/articles/item';
        $this->views('backend/layout/home',(isset($data)) ? $data : NULL);
    }

    public function addItem(){
        $data=[];
        $data['auth']=$this->_auth->data()->name;
        $data['category']= (array)($this->loadModel('model_articles')->getCategory());
        if(Input::exists()){
            $validate = new Validate();
            $validation = $validate->check($_POST, array(
                'title' => array('required' => true),
                'parentid' => array('required' => true)

            ));
            if($validation->passed()){
                $item = $this->loadModel('model_articles');
                try{
                    $item->addItem(array(
                        'title' => Input::get('title'),
                        'parentid' => Input::get('parentid'),
                        'description' => Input::get('description'),
                        'content' => Input::get('content'),
                        'public' => Input::get('public'),
                        'created' => date('Y-m-d H:i:s'),
                        'image' => Input::get('image')
                    ));
                    js_redirect('Thêm bài viết thành công!','backend/articles/item');
                }catch (Exception $e){
                    die($e ->getMessage());
                }
            }else{
                foreach ($validation->errors() as $error) {
                    $data['errors'][] = $error;
                }
            }
        }
        $data['template']='backend/articles/addItem';
        $this->views('backend/layout/home',(isset($data)) ? $data : NULL);
    }
    public function edit($id){
        $data['auth']=$this->_auth->data()->name;
        $id = filter_var($id, FILTER_VALIDATE_INT);
        $item = $this->loadModel('model_articles')->_db->get('news',array('id', '=', $id));
        if($item->count() == 0) {
            js_redirect('Không tồn tại bài viết! ', 'backend/articles/item');
        }
        $data['item']=$item->first();
        if(Input::exists()){
            $validate = new Validate();
            $validation = $validate->check($_POST, array(
                'title' => array('required' => true),
                'parentid' => array('required' => true)

            ));
            if($validation->passed()){
                $item = $this->loadModel('model_articles');
                try{
                    $item->updateItem($id,array(
                        'title' => Input::get('title'),
                        'parentid' => Input::get('parentid'),
                        'description' => Input::get('description'),
                        'content' => Input::get('content'),
                        'public' => Input::get('public'),
                        'image' => Input::get('image')
                    ));
                    js_redirect('Sửa bài viết thành công!','backend/articles/item');
                }catch (Exception $e){
                    die($e ->getMessage());
                }
            }else{
                foreach ($validation->errors() as $error) {
                    $data['errors'][] = $error;
                }
            }
        }
        $data['category']= (array)($this->loadModel('model_articles')->getCategory());
        $data['template']='backend/articles/editItem';
        $this->views('backend/layout/home',(isset($data)) ? $data : NULL);
    }
    public function delete($id){
        $id = (int)$id;
        $item=$this->loadModel('model_articles')->_db->get('news',array('id', '=', $id));
        if($item->count() != 0){
          $item->delete('news',array('id', '=', $id));
            js_redirect('Đã xóa thành công!', 'backend/articles/item');
        }else{
            js_redirect('Không tồn tại post!', 'backend/articles/item');
        }
    }
}