<header class="header-top"><h2>Hệ thống quản trị dữ liệu</h2></header>

<nav class="navigator">
    <ul class="main">
        <li class="main active"><a class="main" href="<?php echo Config::get('url/base_url').'/'; ?>backend/home/index">Hệ thống</a></li>
        <li class="main"><a class="main" href="<?php echo Config::get('url/base_url').'/'; ?>backend/articles/item">Bài viết</a></li>
        <li class="main"><a class="main" href="#">Help</a></li>
    </ul>
    <ul class="user-account">
        <li><a href="#">Chào <strong><?php echo (isset($data['auth'])) ? $data['auth'] : 'Khách';  ?></strong></a></li>
        <li><a href="#">Thông tin</a></li>
        <li><a href="<?php echo Config::get('url/base_url').'/'; ?>backend/users/logout" onclick="return confirm('Are you sure!');">Đăng xuất</a></li>
    </ul>
</nav><!-- .navigator -->