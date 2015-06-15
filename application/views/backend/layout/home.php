<!DOCTYPE html>
<html>
<head lang="en">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="Hege A">
    <link rel="stylesheet" type="text/css" href="<?php echo Config::get('url/base_url').'/'; ?>public/templates/backend/css/normalize.css"/>
    <link rel="stylesheet" type="text/css" href="<?php echo Config::get('url/base_url').'/'; ?>public/templates/backend/css/styles.css"/>
    <title>Hệ thống</title>
</head>
<body>
<section class="itq-wrapper">
<!--load Template-->
    <?php $this->views('backend/common/nav',(isset($data)) ? $data : NULL); ?>
    <?php $this->views($data['template'], (isset($data)) ? $data : NULL)?>
    <?php $this->views('backend/common/footer'); ?>
<!--load Template-->
</section><!-- .itq-wrapper -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="<?php echo Config::get('url/base_url').'/'; ?>public/templates/backend/js/functions.js"></script>
<?php $this->views('backend/common/tinycme'); ?>
</body>
</html>