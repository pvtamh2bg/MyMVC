<header>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <section class="container">
            <div class="row">
                <div class="col-md-3">
                    <section class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-menu">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand title-main" href="<?php echo Config::get('url/base_url').'/'; ?>">Tin24/7</a>
                    </section>
                </div>
                <div class="col-md-8 col-md-offset-1">
                    <section class="navbar-collapse collapse" id="main-menu">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="<?php echo Config::get('url/base_url').'/'; ?>frontend/home/getItemflowCate/1">Xã Hội</a></li>
                            <li><a href="<?php echo Config::get('url/base_url').'/'; ?>frontend/home/getItemflowCate/2">Thể Thao</a></li>
                            <li><a href="<?php echo Config::get('url/base_url').'/'; ?>frontend/home/getItemflowCate/3">Tâm sự</a></li>
                            <li id="login"><a href="<?php echo Config::get('url/base_url').'/'; ?>backend/users/login" >Đăng nhập</a></li>
                        </ul>
                        <form action="" class="navbar-form">
                            <section class="form-group">
                                <input class="form-control" type="text" placeholder="Nội dung tìm kiếm"/>
                            </section>
                            <button type="submit" class="btn btn-primary">Tìm kiếm</button>
                        </form>

                    </section>
                </div>
            </div>
        </section>
    </nav>
</header>