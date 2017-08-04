<?php include('header.php') ?>
    <div class="container bootstrap snippet">
    <div class="row">
        <div class="col-lg-12">
            <div class="main-box no-header clearfix">
                <div class="main-box-body clearfix">
                    <div class="table-responsive">
                        <table class="table user-list">
                            <thead>
                            <tr>
                                <th><span>User</span></th>
                                <th><span>Created</span></th>
                                <th><span>Email</span></th>
                                <th>&nbsp;</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php foreach ($users as $user) { ?>
                                <tr>
                                    <td>
                                        <img src="<?= $user->img_url ?>" alt="">
                                        <a href="/user/<?= $user->id ?>" class="user-link"><?= $user->full_name ?></a>
                                    </td>
                                    <td><?= $user->created_at ?></td>
                                    <td>
                                        <a href="#"><?= $user->email ?></a>
                                    </td>
                                    <td style="width: 20%;">
                                        <a href="/user/<?= $user->id ?>" class="table-link">
                                            <span class="fa-stack">
                                                <i class="fa fa-square fa-stack-2x"></i>
                                                <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                            </span>
                                        </a>
                                    </td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include('footer.php') ?>


