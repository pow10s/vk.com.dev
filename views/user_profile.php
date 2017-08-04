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
                    <?php if ($userData->birth) { ?>
                        <div class="profile-usertitle-job">
                            <?= $userData->birth->format('Y/m/d'); ?>
                        </div>
                    <?php } ?>
                </div>
                <!-- SIDEBAR MENU -->
                <div class="profile-usermenu">
                    <ul class="nav">
                        <li>
                            <a href="/user-profile/edit">
                                <i class="glyphicon glyphicon-user"></i>
                                Edit Account </a>
                        </li>
                        <li>
                            <a href="/logout">
                                <i class="glyphicon glyphicon-log-out"></i>
                                Logout </a>
                        </li>

                    </ul>
                </div>
                <!-- END MENU -->
            </div>
        </div>
        <div class="col-md-9">
            <div class="profile-content">
                <div class="row">
                    <h2>Posts</h2>
                    <div class="pull-right">
                        <a href="/user-profile/posts/create">
                            <div class="btn btn-default btn-success btn-md" data-toggle="modal"
                                 data-target="#panel-customer"><i class="glyphicon glyphicon-plus"></i> New
                            </div>
                        </a>
                    </div>
                </div>
                <div class="row">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr class="bg-info ">
                            <th></th>
                            <th>Title</th>
                            <th>Body</th>
                            <th>Likes</th>
                        </tr>
                        </thead>

                        <tbody id="list-items">
                        <?php foreach ($userData->posts as $post) { ?>
                            <tr>
                                <td style="width:140px; text-align: center">
                                    <a href="/user-profile/post/edit/<?= $post->id ?>">
                                        <div class="btn btn-sm btn-default"><i
                                                    class="icon-trash glyphicon glyphicon-edit text-primary"></i></div>
                                    </a>
                                    <a href="/user-profile/post/delete/<?= $post->id ?>">
                                        <div class="btn btn-sm btn-default"><i
                                                    class="icon-trash glyphicon glyphicon-trash text-danger"></i></div>
                                    </a>
                                </td>
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
<?php include('footer.php') ?>

