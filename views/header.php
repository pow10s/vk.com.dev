<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>vk.com</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <link rel="stylesheet" href="/css/blog-post.css">
    <link rel="stylesheet" href="/css/user_sidebar.css">
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Home</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li>
                    <a href="/users">Users</a>
                </li>
                <?php if (!\components\Auth::isLogged()){ ?>
                <li>
                    <a href="/auth">Authorization</a>
                </li>
                <?php }else{ ?>
                    <li >
                        <a href="/user-profile">Your profile</a>
                    </li>
                    <li >
                        <a href="/logout">Logout</a>
                    </li>
                <?php } ?>
            </ul>

</div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>