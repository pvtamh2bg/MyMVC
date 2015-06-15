<?php
class Validate{
    private $_errors = [],
            $_db = null,
            $_passed = false;
    public function __construct(){
        $this->_db = Model::getInstance();
    }

    public function check($source, $items = array()){
        foreach($items as $item => $rules){
            foreach($rules  as $rule => $varRule){
                $value = trim($source[$item]);
                $item  = escape($item);
                if($rule === 'required' && empty($value)) {
                    $this->addError("{$item} không được để trống");
                }else if(!empty($value)){
                    switch($rule) {
                        case 'min':
                            if (strlen($value) < $varRule) {
                                $this->addError("{$item} phải lớn hơn {$varRule} kí tự");
                            }
                            break;
                        case 'max':
                            if (strlen($value) > $varRule) {
                                $this->addError("{$item} phải nhỏ hơn {$varRule} tự");
                            }
                            break;
                        case 'unique':
                            $checkUnique = $this->_db->get($varRule, array($item, '=', $value));
                            if ($checkUnique->count()) {
                                $this->addError("{$item} đã tồn tại!");
                            }
                            break;
                    }
                }
            }
        }
        if(empty($this->_errors)){
            $this->_passed = true;
        }
        return $this;
    }

    private function addError($error){
        return $this->_errors[] = $error;
    }

    public function errors(){
        return $this->_errors;
    }
    public function passed(){
        return $this->_passed;
    }

}