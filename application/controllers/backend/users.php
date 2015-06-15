<?php
class Users extends Controller
{
    public function __construct(){
//        $user = $this->loadModel('model_users');
//        if($user->isLoggedIn()){
//            Redirect::to('backend/home/index');
//        }
    }
    public function login()
    {
        $data=[];
        if (Input::exists()) {
            $validate = new Validate();
            $validation = $validate->check($_POST, array(
                'username' => array('required' => true),
                'password' => array('required' => true)

            ));
            if ($validation->passed()) {
                $user = $this->loadModel('model_users');
                $login = $user->login(Input::get('username'), Input::get('password'));
                if ($login) {
                    Redirect::to('backend/home/index');
                } else {
                    $data['errors'][] = 'Bạn Điền Sai Tài khoản và mật khẩu!!';
                }
            } else {
                foreach ($validation->errors() as $error) {
                    $data['errors'][] = $error;
                }
            }
        }
        $data['template'] = 'backend/auth/login';
        $this->views('backend/layout/auth', $data);
    }

    public function logout(){
      $this->loadModel('model_users')->logout();
        Redirect::to('backend/users/login');
    }
}