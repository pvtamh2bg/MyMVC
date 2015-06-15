<?php

function escape($string){
    return htmlentities($string, ENT_QUOTES, "UTF-8");
}
function js_redirect($alert,$url)
{
    die('<meta http-equiv="content-type" content="text/html; charset=UTF-8"><script type="text/javascript">alert(\''.$alert.'\'); location.href=\''.Redirect::to($url).'\'; </script>');
}
function common_validatepost($value=NULL)
{
    if($value != NULL)
        return (isset($value) && !is_null($value)) ? escape($value) : '';
    return false;
}
function process_link_img($link)
{
    $str='';
    if(strlen($link) != 0) {
        $linkArr = explode('/',$link);
        foreach ($linkArr as $val) {
            if($val == current($linkArr)) continue;
            $str.=$val.'/';
        }
        return substr(substr($str,0,-1),1);
    }
    return $str;
}