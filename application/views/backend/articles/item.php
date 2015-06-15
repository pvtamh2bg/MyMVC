<section class="itq-tabs">
    <h1>Danh sách bài viết</h1>
    <ul>
        <li class="active"><a href="<?php echo Config::get('url/base_url').'/'; ?>backend/articles/item">Danh mục bài viết</a> </li>
        <li><a href="<?php echo Config::get('url/base_url').'/'; ?>backend/articles/addItem">Thêm bài viết</a> </li>
    </ul>
</section><!-- .itq-tabs -->

<section class="itq-views">
    <section class="advanged">
        <section class="search">
            <form action="">
                <select name="category" id="category">
                    <option>-- Danh mục sản phẩm --</option>
                    <?php if(isset($data['category']) && count($data['category'])){
                        foreach($data['category'] as $keyCate => $varCate){ ?>
                            <option value="<?php echo $varCate->id; ?>"><?php echo $varCate->catname; ?></option>
                        <?php
                        }
                    } ?>
                </select>
                <input type="text" name="keyword" class="text"/>
                <input type="submit" name="search" value="Tìm kiếm" class="submit"/>
            </form>
        </section><!-- search -->
        <?php
        if(isset($data['item']) && count($data['item'])){
        ?>
        <section class="tool">
            <form action="">
                <input type="button" value="Thêm mới"/>
                <input type="button" value="Xóa chọn" onclick="document.getElementById('bntDel').click();"/>
                <input type="button" value="Hiện thị"/>
                <input type="button" value="Xắp sếp"/>
            </form>
        </section><!-- .tool -->
    </section><!-- .advanged -->
    <?php } ?>

    <section class="table">
        <form action="" method="post">
            <table cellpadding="0" cellspacing="0" class="main">
                <thead>
                <tr>
                    <th>#</th>
                    <th> <input type="checkbox" name="chkAll" id="chkAll"/> </th>
                    <th class="left">Tên bài viết</th>
                    <th><a href="#">Ngày tạo</a> </th>
                    <th><a href="#">Vị trí</a> </th>
                    <th><a href="#">Hiển thị</a> </th>
                    <th><a href="#">Thao tác</a> </th>
                    <th><a href="#">Mã</a> </th>
                </tr>
                </thead>
                <tbody>
                <?php
                if(isset($data['item']) && count($data['item'])){
                    $stt=1;
                    foreach($data['item'] as $keyItem => $varItem){
                        ?>
                        <tr>
                            <td><?php echo $stt++; ?></td>
                            <td><input type="checkbox" name="chk[]" value="<?php echo $varItem->id; ?>" class="check-all" /></td>
                            <td class="left"><?php echo $varItem->title; ?></td>
                            <td><a href="#"><?php echo ($varItem->created != '0000-00-00 00:00:00')?gmdate("H:i d/m/Y", strtotime($varItem->created) + 7*3600):'-';  ?></a> </td>
                            <td><a href="#"><input type="input" name="" value="0" class="order"></a> </td>
                            <td><a href="#"><img src="../../public/templates/backend/images/<?php echo ($varItem->public==1)?'accept':'uncheck'; ?>.png"" alt=""/></a></td>
                            <td><a href="<?php echo Config::get('url/base_url').'/'; ?>backend/articles/delete/<?php echo $varItem->id; ?>" onclick="return confirm('Bạn chắc chán xóa?');"><img src="../../public/templates/backend/images/del.png" alt=""/></a> <a href="<?php echo Config::get('url/base_url').'/'; ?>backend/articles/edit/<?php echo $varItem->id; ?>"><img src="../../public/templates/backend/images/edit.png" alt=""/></a></td>
                            <td><?php echo $varItem->id; ?></td>
                        </tr>
                    <?php } } ?>
                </tbody>
            </table>
            <section class="display-none">
                <input type="submit" name="sort" value="Xắp sếp" id="bntSort"/>
                <input type="submit" value="Xóa chọn" name="btnDel" onClick="return confirm('Bạn có chắc chắn muốn xóa ?');" id="bntDel"/>
            </section>
        </form>

    </section><!-- .table -->

    <section class="pagination">
        <ul>
            <li><a href="#">Trang đầu </a></li>
            <li><a href="#">Lùi lại</a></li>
            <li class="active"><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">Tiến lên</a></li>
            <li><a href="#">Trang cuối</a></li>
        </ul>
    </section><!-- .pagination -->
</section><!-- .itq-view -->