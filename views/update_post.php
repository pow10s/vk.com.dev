<?php include('header.php') ?>
    <div class="container">
        <div class="row">

            <div class="col-md-8 col-md-offset-2">

                <h1>Update post</h1>

                <form enctype="multipart/form-data" action="" method="POST">

                    <div class="form-group">
                        <label for="title">Title </label>
                        <input type="text" class="form-control" name="title" value="<?= $post->title ?>"/>
                    </div>

                    <div class="form-group">
                        <label for="title">Image </label>
                        <input type="file" class="form-control" name="img_url"/>
                    </div>

                    <div class="form-group">
                        <label for="description">Body</label>
                        <textarea rows="5" class="form-control" name="body"><?= $post->body ?></textarea>
                    </div>

                    <div class="form-group">
                        <label for="title">Commentable? </label>
                        <input type="checkbox" name="is_commentable" value="1"/>
                    </div>

                    <div class="form-group">
                        <button name="submit_btn" type="submit" class="btn btn-primary">
                            Update
                        </button>
                        <a href="/user-profile" class="btn btn-info btn-lg">
                            <span class="glyphicon glyphicon-log-out"></span> Back
                        </a>
                    </div>

                </form>
            </div>

        </div>
    </div>
<?php include('footer.php') ?>