<?php include ('header.php')?>
    <div class="container">

    <div class="row">
        <!-- Blog Post Content Column -->
        <?php foreach ($paginator->records() as $record) { ?>
            <div class="col-lg-8">
                <h1><?= $record['title'] ?></h1>
                <p class="lead">
                    by <a href="/user/<?= $record['users']['id'] ?>"><?= $record['users']['full_name'] ?></a>
                </p>
                <hr>
                <p><span class="glyphicon glyphicon-time"></span> Posted on <?= $record['created_at'] ?></p>
                <p class="like pull-right" data-id = "<?=$record['id'] ?>"><span class="glyphicon glyphicon-heart counter" style="font-size: 15px"><?=$record['likes'] ?></span> </p>
                <hr>
                <?php if ($record['img_url']) { ?>
                    <img class="img-responsive" src="<?= $record['img_url'] ?>" alt="">
                    <hr>
                <?php } ?>
                <?php if ($record['body']) { ?>
                    <p><?= $record['body'] ?></p>
                    <hr>
                <?php } ?>
                <?php if (\models\Posts::isCommentable($record['id'])) { ?>
                    <div class="well">
                        <h4>Leave a Comment:</h4>
                        <form method="post">
                            <div class="form-group">
                                <textarea name="comment_body" class="form-control" rows="3"></textarea>
                            </div>
                            <input type="hidden" name="post_id" value="<?= $record['id'] ?>">
                            <button type="submit" name="comment_btn" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                    <hr>
                <?php } ?>
                <?php foreach ($record['comments'] as $comment) { ?>
                    <?php foreach (\models\Comments::getUserByCommentId($comment['id']) as $user) { ?>
                        <div class="media">
                            <a class="pull-left" href="/user/<?= $user['users']['id'] ?>">
                                <img class="media-object small-img" src="<?= $user['users']['img_url'] ?>" alt="">
                            </a>
                            <?php if (\components\Auth::getUser()->id == $user['users']['id'] || \components\Auth::isAdmin()) { ?>
                                <a class="pull-right" href="/comment/delete/<?= $comment['id'] ?>">
                                    <i class="glyphicon glyphicon-remove"></i>
                                </a>
                            <?php } ?>
                            <div class="media-body">
                                <h4 class="media-heading"><?= $user['users']['full_name'] ?>
                                    <small><?= $comment['created_at'] ?></small>
                                </h4>
                                <?= $comment['body'] ?>
                            </div>
                        </div>
                    <?php } ?>
                <?php } ?>
            </div>
        <?php } ?>
        <div class="col-md-4">
        </div>
    </div>
    <div class="row"><?=$paginator ?></div>
    <hr>
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <p>Copyright &copy; stosdima 2017</p>
            </div>
        </div>
    </footer>

</div>
<?php include ('footer.php')?>