<section class="itq-tabs">
    <h1>Danh sách bài viết</h1>
    <ul>
        <li><a href="<?php echo Config::get('url/base_url').'/'; ?>backend/articles/item">Danh mục bài viết</a> </li>
        <li class="active"><a href="<?php echo Config::get('url/base_url').'/'; ?>backend/articles/addItem">Sửa bài viết</a> </li>
    </ul>
</section><!-- .itq-tabs -->

<section class="itq-form">
    <form action="" method="post">
        <section class="main-panel">
            <header>Thông tin chi tiết</header>
            <section class="error">
                <ul>
                    <?php
                    if(!empty($data['errors'])){
                        foreach($data['errors'] as $error){
                            echo "<li>$error</li>";
                        }
                    }
                    ?>
                </ul>
            </section><!-- .error -->
            <?php if(isset($data['item']) && count($data['item'])){
            ?>
            <section class="block">

                <label class="item">
                    <p class="title">Tiêu đề:</p>
                    <input type="text" name="title" value="<?php echo common_validatepost((isset($data['item']->title)) ? $data['item']->title : ''); ?>" class="txtText"/>
                </label>

                <label class="item">
                    <p class="title">Ảnh:</p>
                    <input type="text" name="image" value="<?php echo common_validatepost((isset($data['item']->image)) ? $data['item']->image : ''); ?>" id="txtImage" class="txtText"/><input type="button" value="chọn ảnh" onclick="browseKCFinder('txtImage','image');return false;" id="bntButton"/>
                </label>
                <label class="item">
                    <p class="title">Danh mục:</p>
                    <select class="cbselect" name="parentid">
                        <option value="">-- Chọn danh mục --</option>
                        <?php if(isset($data['category']) && count($data['category'])){
                            foreach($data['category'] as $keyCate => $varCate){ ?>
                                <option value="<?php echo $varCate->id; ?>"><?php echo $varCate->catname; ?></option>
                            <?php
                            }
                        } ?>
                    </select>
                </label>
                <label class="item">
                    <p class="title">Mô tả ngắn:</p>
                    <textarea class="txtArea short tiny_editor" name="description"><?php echo common_validatepost((isset($data['item']->description)) ? $data['item']->description : ''); ?></textarea>
                </label>

                <label class="item">
                    <p class="title">Nội dung:</p>
                    <textarea class="txtArea tiny_editor" name="content"><?php echo common_validatepost((isset($data['item']->content)) ? $data['item']->content : ''); ?></textarea>
                </label>

                <section class="action">
                    <p class="title">Thao tác:</p>
                    <section class="group">
                        <input type="submit" name="add" value="Thêm mới" class="bntSmit"/>
                        <input type="reset"  value="Làm lại" class="reset"/>
                    </section>
                </section><!-- .action -->
            </section><!-- .block -->
        </section><!-- .main-panel -->

        <aside class="side-panel">

            <section class="block">
                <header>Xuất bản</header>
                <section class="container">
                    <section class="checkbox-radio">
                        <p class="title">Lựa chọn:</p>
                        <section class="group">
                            <label><input type="radio" name="public" value="1" class="" <?php echo (isset($data['item']->public) && ($data['item']->public==1))?'checked="checked"':''?>><span>Có</span></label>
                            <label><input type="radio" name="public" value="0" class="" <?php echo (isset($data['item']->public) && ($data['item']->public==0))?'checked="checked"':''?>><span>Không</span></label>
                        </section>
                    </section><!-- .checkbox-radio -->
                </section><!-- .container -->
            </section><!-- .block -->

            <section class="block">
                <header>Nâng cao</header>
                <section class="container">
                    <label class="item">
                        <p class="title">Tiêu đề:</p>
                        <input type="text"  class="txtText"/>
                    </label>

                    <label class="item">
                        <p class="title">Mô tả ngắn:</p>
                        <textarea class="txtArea short" ></textarea>
                    </label>
                    <label class="item">
                        <p class="title">Danh mục:</p>
                        <select class="cbselect">
                            <option value="">-- Chọn danh mục --</option>
                        </select>
                    </label>

                </section><!-- .container -->
            </section><!-- .block -->

        </aside><!-- .side-panel -->
        <?php } ?>
    </form>
</section><!-- .itq-form -->