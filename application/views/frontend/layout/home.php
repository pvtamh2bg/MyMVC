<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Trang chủ</title>
    <!-- Bootstrap -->
    <link href="<?php echo Config::get('url/base_url').'/'; ?>public/templates/frontend/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo Config::get('url/base_url').'/'; ?>public/templates/frontend/css/styles.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<?php $this->views('frontend/common/main-menu', (isset($data)) ? $data : NULL); ?>
<!-- load Template -->
<?php  $this->views($data['template'], (isset($data)) ? $data : NULL) ?>
<!-- load Template -->
<?php $this->views('frontend/common/footer',(isset($data)) ? $data : NULL);?>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<?php echo Config::get('url/base_url').'/'; ?>public/templates/frontend/js/bootstrap.min.js"></script>
</body>
</html>
