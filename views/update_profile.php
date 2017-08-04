<?php include('header.php') ?>
    <div class="container">
        <h1 class="page-header"></h1>
        <div class="row">
            <!-- left column -->
            <div class="col-md-4 col-sm-6 col-xs-12">

            </div>
            <!-- edit form column -->
            <div class="col-md-8 col-sm-6 col-xs-12 personal-info">
                <!--            <div class="alert alert-info alert-dismissable">
                                <a class="panel-close close" data-dismiss="alert">×</a>
                                <i class="fa fa-coffee"></i>
                                This is an <strong>.alert</strong>. Use this to show important messages to the user.
                            </div>-->
                <h3>Personal info</h3>
                <form enctype="multipart/form-data" method="POST" class="form-horizontal">
                    <div class="form-group">
                        <div class="col-lg-8">
                            <img src="<?= $userData->img_url ?>" class="avatar  img-thumbnail" alt="avatar">
                            <h6>Upload a different photo...</h6>
                            <input type="file" size="32" name="edit_img" value="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Full name:</label>
                        <div class="col-lg-8">
                            <input class="form-control" name="edit_full_name" value="<?= $userData->full_name ?>"
                                   type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Email:</label>
                        <div class="col-lg-8">
                            <input class="form-control" name="edit_email" value="<?= $userData->email ?>" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Date of birth:</label>
                        <div class="col-md-5" id="sandbox-container">
                            <input name="edit_birth" type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Password:</label>
                        <div class="col-md-8">
                            <input class="form-control" name="edit_password" value="" type="password">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Confirm password:</label>
                        <div class="col-md-8">
                            <input class="form-control" name="edit_password_verify" value="" type="password">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label"></label>
                        <div class="col-md-8">
                            <input name="edit_btn" class="btn btn-primary" value="Save Changes" type="submit">
                            <a href="/user-profile" class="btn btn-info btn-lg">
                                <span class="glyphicon glyphicon-log-out"></span> Back
                            </a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php include('footer.php') ?>