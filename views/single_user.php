<?php include('header.php') ?>
    <div class="container">
        <div class="row profile">
            <div class="col-md-3">
                <div class="profile-sidebar">
                    <!-- SIDEBAR USERPIC -->
                    <div class="profile-userpic">
                        <img src="<?= $userData->img_url ?>" class="img-responsive" alt="">
                    </div>
                    <!-- END SIDEBAR USERPIC -->
                    <!-- SIDEBAR USER TITLE -->
                    <div class="profile-usertitle">
                        <div class="profile-usertitle-name">
                            <?= $userData->full_name ?>
                        </div>
                        <div class="profile-usertitle-job">
                            <?= $userData->email ?>
                        </div>
                        <div class="profile-usertitle-job">
                            <?php if ($userData->birth) { ?>
                                <?= $userData->birth->format('Y/m/d'); ?>
                            <?php } ?>

                        </div>
                        <?php if ($userData->banned == '1') { ?>
                            <div class="profile-usertitle-job">
                                <span style="color:red">Banned</span>
                            </div>
                        <?php } ?>
                        <?php if (\components\Auth::isAdmin()) { ?>
                            <div class="profile-usertitle-job">
                                <a style="color: red" href="/admin/user/ban/<?= $userData->id ?>">
                                    <i class="glyphicon glyphicon-ban-circle"></i>
                                    Ban Account </a>
                                <a style="color: green" href="/admin/user/unban/<?= $userData->id ?>">
                                    <i class="glyphicon glyphicon-ok-circle"></i>
                                    Unban Account </a>
                            </div>
                        <?php } ?>
                    </div>

                </div>
            </div>
            <div class="col-md-9">
                <div class="profile-content">
                    <div class="row">
                        <h2>Posts</h2>
                    </div>
                    <div class="row">
                        <table class="table table-bordered table-striped">
                            <thead>
                            <tr class="bg-info ">
                                <?php if (\components\Auth::isAdmin()) { ?>
                                    <th></th>
                                <?php } ?>
                                <th>Title</th>
                                <th>Body</th>
                                <th>Likes</th>
                            </tr>
                            </thead>

                            <tbody id="list-items">
                            <?php foreach ($userData->posts as $post) { ?>
                                <tr>
                                    <?php if (\components\Auth::isAdmin()) { ?>

                                        <td style="width:140px; text-align: center">
                                            <a href="/admin/post/edit/<?= $post->id ?>">
                                                <div class="btn btn-sm btn-default"><i
                                                            class="icon-trash glyphicon glyphicon-edit text-primary"></i>
                                                </div>
                                            </a>
                                            <a href="/admin/post/delete/<?= $post->id ?>">
                                                <div class="btn btn-sm btn-default"><i
                                                            class="icon-trash glyphicon glyphicon-trash text-danger"></i>
                                                </div>
                                            </a>
                                        </td>
                                    <?php } ?>
                                    <td><?= $post->title ?></td>
                                    <td><?= $post->body ?></td>
                                    <td><?= $post->likes ?></td>
                                </tr>
                            <?php } ?>
                            </tbody>

                        </table>


                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
<?php include('footer.php') ?>