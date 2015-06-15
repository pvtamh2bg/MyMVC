<section class="container">
    <section class="row">
        <h3 class="text-center">Login Systems</h3>
        <section class="errors text-center">
            <ul class="list-unstyled">
                <?php
                if(!empty($data['errors'])){
                    foreach($data['errors'] as $error){
                        echo "<li>$error</li>";
                    }
                }
                ?>
            </ul>
        </section>
        <section class="col-md-4 col-md-offset-4">
            <form action="" class="form-horizontal" role="form" method="post">
                <section class="form-group">
                    <label for="username" class="sr-only">Username</label>
                    <input type="text" class="form-control" name="username" id="username" value="<?php echo Input::get('username'); ?>" placeholder="Tên Tài Khoản"/>
                </section>
                <section class="form-group">
                    <label for="password" class="sr-only">Password</label>
                    <input type="password" class="form-control" name="password" id="password" value="<?php echo Input::get('password'); ?>" placeholder="Password"/>
                </section>
                <section class="form-group">
                    <input type="checkbox" name="remember" id="remember"/> Remember me
                </section>
                <section class="form-group">
                    <button class="btn btn-primary">Login</button>
                    <a href="" class="btn-link">Forgot Password</a>
                </section>
            </form>
        </section>
    </section>
</section>s