<section class="main-content">
    <section class="container">
        <section class="row">
            <?php
            if(isset($data['list_items']) && count($data['list_items'])){
                //hiện thị bài viết
                foreach($data['list_items'] as $key => $varItem){
                    ?>
                    <section class="col-md-6">
                        <section class="post">
                            <article>
                                <figure>
                                    <img class="img-responsive img-thumbnail" src="<?php echo Config::get('url/base_url') .'/'.process_link_img($varItem->image); ?>" width="300" height="300" alt="<?php echo $varItem->title;?>"/>
                                    <figcaption>
                                        <h2 class="title_article"><a href="#"><?php echo $varItem->title;?></a></h2>
                                        <section class="description_article">
                                            <?php echo $varItem->description;?>
                                        </section>
                                    </figcaption>
                                </figure>
                            </article>
                        </section>
                    </section>
                <?php
                } }
            ?>
        </section>
    </section>
</section>