<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>LinkSharing | Dashboard</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link href="${resource(dir: 'bootstrap/css', file: 'bootstrap.min.css')}" rel="stylesheet">
    %{--<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>--}%
    %{--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-beta1/jquery.min.js"></script>--}%
    <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
    <script src="${resource(dir: 'bootstrap/js', file: 'bootstrap.min.js')}"></script>
    %{--<script src="${resource(dir:'js',file:'bootstrap-typeahead.js')}"></script>    <link rel="stylesheet" href="${resource(dir: 'bootstrap/css', file: 'bootstrap.min.css')}">--}%
    %{--<script src="${resource(dir:'js',file:'jquery.mockjax.js')}"></script>--}%
    %{--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">--}%
    %{--<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">--}%
    %{--<link rel="stylesheet" href="${resource(dir: 'dist/css', file: 'AdminLTE.min.css')}">--}%
    %{--<link rel="stylesheet" href="${resource(dir: 'dist/css/skins', file: '_all-skins.min.css')}">--}%
    %{--<link rel="stylesheet" href="${resource(dir: 'plugins/iCheck/flat', file: 'blue.css')}">--}%
    %{--<link rel="stylesheet" href="${resource(dir: 'plugins/morris', file: 'morris.css')}">--}%
    %{--<link rel="stylesheet" href="${resource(dir: 'plugins/jvectormap', file: 'jquery-jvectormap-1.2.2.css')}">--}%
    %{--<link rel="stylesheet" href="${resource(dir: 'plugins/datepicker', file: 'datepicker3.css')}">--}%
    %{--<link rel="stylesheet" href="${resource(dir: 'plugins/bootstrap-wysihtml5', file: 'bootstrap3-wysihtml5.min.css')}">--}%
    %{--<link rel="stylesheet" href=" ${resource(dir: 'plugins/daterangepicker', file: 'daterangepicker-bs3.css')}">--}%
    %{--<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>--}%

    %{--<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>--}%


    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <link rel="stylesheet" href="../dist/css/star-rating.css" media="all" rel="stylesheet" type="text/css"/>
    <script src="../dist/js/star-rating.js" type="text/javascript"></script>
    %{--<link rel="stylesheet" href="${resource(dir: 'bootstrap/css', file: 'bootstrap.min.css')}">--}%
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="${resource(dir: 'dist/css', file: 'AdminLTE.min.css')}">
    <link rel="stylesheet" href="${resource(dir: 'dist/css/skins', file: '_all-skins.min.css')}">
    <link rel="stylesheet" href="${resource(dir: 'plugins/iCheck/flat/', file: 'blue.css')}">
    <link rel="stylesheet" href="${resource(dir: 'plugins/morris', file: 'morris.css')}">
    <link rel="stylesheet" href="${resource(dir: 'plugins/jvectormap', file: 'jquery-jvectormap-1.2.2.css')}">
    <link rel="stylesheet" href="${resource(dir: 'plugins/datepicker', file: 'datepicker3.css')}">
    <link rel="stylesheet" href=" ${resource(dir: 'plugins/daterangepicker', file: 'daterangepicker-bs3.css')}">
    <link rel="stylesheet" href="${resource(dir: 'plugins/bootstrap-wysihtml5', file: 'bootstrap3-wysihtml5.min.css')}">
    %{--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>--}%

</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <header class="main-header">
        <a href="${createLink(controller: "linkSharing", action: "mainpage")}" class="logo">
            <span class="logo-mini"><b>L</b>S</span>
            <span class="logo-lg"><b>Link</b>Sharing</span>
        </a>
        <nav class="navbar navbar-static-top" role="navigation">
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li class="dropdown notifications-menu">
                        <form id="searchform" class="navbar-form" role="search" style="padding-left:30px">
                            <div class="input-group">
                                <input id="searchtxt" type="text" onkeyup="topic(this.value)" name="searchtxt"
                                       class="col-md-12 form-control" placeholder="Search topics..."/>

                                <div class="input-group-btn ">

                                    %{--<button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>--}%
                                </div>

                            </div>

                        </form>
                        <ul class="dropdown-menu">
                            <li class="header" id="dropdownheader"></li>
                            <li>
                                <ul class="menu" id="dropdownsearch">
                                    %{--<li><!-- start message -->--}%
                                    %{--<a href="#">--}%
                                    %{--<h4>--}%
                                    %{--Support Team--}%
                                    %{--<small><i class="fa fa-clock-o"></i> 5 mins</small>--}%
                                    %{--</h4>--}%
                                    %{--<p>Grails/Java</p>--}%
                                    %{--</a>--}%
                                    %{--</li>--}%
                                    %{--<li>--}%
                                    %{--<a href="#">--}%
                                    %{--<h4>--}%
                                    %{--To The New  Digital Design Team--}%
                                    %{--<small><i class="fa fa-clock-o"></i> 2 hours</small>--}%
                                    %{--</h4>--}%
                                    %{--<p>new blog is uploaded....</p>--}%
                                    %{--</a>--}%
                                    %{--</li>--}%
                                    %{--<li>--}%
                                    %{--<a href="#">--}%
                                    %{--<h4>--}%
                                    %{--Developers--}%
                                    %{--<small><i class="fa fa-clock-o"></i> Today</small>--}%
                                    %{--</h4>--}%
                                    %{--<p>Today is Gorm session.</p>--}%
                                    %{--</a>--}%
                                    %{--</li>--}%
                                    %{--<li>--}%
                                    %{--<a href="#">--}%
                                    %{--<h4>--}%
                                    %{--American Sawan Department--}%
                                    %{--<small><i class="fa fa-clock-o"></i> Yesterday</small>--}%
                                    %{--</h4>--}%
                                    %{--<p>project is going on...</p>--}%
                                    %{--</a>--}%
                                    %{--</li>--}%
                                    %{--<li>--}%
                                    %{--<a href="#">--}%
                                    %{--<h4>--}%
                                    %{--Reviewers--}%
                                    %{--<small><i class="fa fa-clock-o"></i> 2 days</small>--}%
                                    %{--</h4>--}%
                                    %{--<p>Java/Grails</p>--}%
                                    %{--</a>--}%
                                    %{--</li>--}%

                                </ul>
                            </li>
                            <li class="footer"><a href="../../pages/mailbox/mailbox.html">See All Relavent Topic</a>
                            </li>
                        </ul>
                        %{----}%

                    </li>

                    <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 4 messages</li>
                            <li>
                                <ul class="menu">
                                    <li><!-- start message -->
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="../../dist/img/user2-160x160.jpg" class="img-circle"
                                                     alt="User Image">
                                            </div>
                                            <h4>
                                                Support Team
                                                <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                            </h4>

                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="../../dist/img/user3-128x128.jpg" class="img-circle"
                                                     alt="User Image">
                                            </div>
                                            <h4>
                                                To The New  Digital Design Team
                                                <small><i class="fa fa-clock-o"></i> 2 hours</small>
                                            </h4>

                                            <p>new blog is uploaded....</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="../../dist/img/user4-128x128.jpg" class="img-circle"
                                                     alt="User Image">
                                            </div>
                                            <h4>
                                                Developers
                                                <small><i class="fa fa-clock-o"></i> Today</small>
                                            </h4>

                                            <p>Today is Gorm session.</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="../../dist/img/user3-128x128.jpg" class="img-circle"
                                                     alt="User Image">
                                            </div>
                                            <h4>
                                                American Sawan Department
                                                <small><i class="fa fa-clock-o"></i> Yesterday</small>
                                            </h4>

                                            <p>project is going on...</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="../../dist/img/user4-128x128.jpg" class="img-circle"
                                                     alt="User Image">
                                            </div>
                                            <h4>
                                                Reviewers
                                                <small><i class="fa fa-clock-o"></i> 2 days</small>
                                            </h4>

                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer"><a href="../../pages/mailbox/mailbox.html">See All Messages</a></li>
                        </ul>
                    </li>
                    <li class="dropdown notifications-menu">
                        <a href="#" data-target="#createTopic" data-toggle="modal" class="dropdown-toggle"
                           data-toggle="dropdown">
                            <i class="fa fa-comment"></i>
                            <span class="label label-info"></span>
                        </a>

                    </li>
                    <li class="dropdown notifications-menu">
                        <a href="#" data-target="#shareLink" data-toggle="modal" class="dropdown-toggle"
                           class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-link"></i>
                            <span class="label label-warning"></span>

                        </a>

                    </li>

                    <li class="dropdown tasks-menu">
                        <a href="#" data-target="#shareDoc" data-toggle="modal" class="dropdown-toggle"
                           data-toggle="dropdown">
                            <i class="fa fa-file-o"></i>
                            <span class="label label-success"></span>
                        </a>

                    </li>

                    <li class="dropdown tasks-menu">
                        <a href="#" data-target="#sendInv" data-toggle="modal" class="dropdown-toggle"
                           data-toggle="dropdown">
                            <i class="fa fa-send-o"></i>
                            <span class="label label-success"></span>
                        </a>

                    </li>

                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="../../dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">${session.username}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                <p>
                                    ${session.username} - Web Developer Trainee
                                    <small>To The New Digital</small>
                                </p>
                            </li>
                            <!-- Menu Body -->
                            <li class="user-body">
                                <div class="row">
                                    <div class="col-xs-6 text-center">
                                        <a href="#">Subscriptions</a>
                                    </div>

                                    <div class="col-xs-6 text-center">
                                        <a href="#">Topics</a>
                                    </div>

                                </div>
                                <!-- /.row -->
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="${createLink(controller: "linkSharing", action: "profile")}"
                                       class="btn btn-default btn-flat">Profile</a>
                                </div>

                                <div class="pull-right">
                                    <a href="${createLink(controller: "login", action: "logout")}"
                                       class="btn btn-default btn-flat">Sign out</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>

                <div class="pull-left info">
                    <p>${session.username}</p>
                    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>
            <!-- search form -->
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                        <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i
                                class="fa fa-search"></i>
                        </button>
                    </span>
                </div>
            </form>
            <ul class="sidebar-menu">
                <li class="header">LINK SHARING</li>
                <li class="active treeview">
                    <a class="active" href="${createLink(controller: 'linkSharing', action: 'dashboard')}">
                        <i class="fa fa-dashboard"></i> <span>Dashboard</span> <i
                            class="fa fa-angle-left pull-right"></i>
                    </a>
                </li>
                <li>
                    <a href="${createLink(controller: 'linkSharing', action: 'trendingPost')}">
                        <i class="fa fa-th"></i> <span>Trending Post</span>
                        <small class="label pull-right bg-green">new</small>
                    </a>
                </li>

                <li class="treeview">
                    <a href="${createLink(controller: 'linkSharing', action: 'accountSetting')}">
                        <i class="fa fa-edit"></i> <span>Account Setting</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-table"></i> <span>Admin</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">

                        <li><a href="${createLink(controller: 'linkSharing', action: 'admin')}"><i
                                class="fa fa-circle-o"></i> Data tables</a></li>
                    </ul>
                </li>
                <li>
                    <a href="${createLink(controller: 'linkSharing', action: 'calender')}">
                        <i class="fa fa-calendar"></i> <span>Calendar</span>
                        <small class="label pull-right bg-red">3</small>
                    </a>
                </li>
                <li>
                    <a href="${createLink(controller: 'linkSharing', action: 'inbox')}">
                        <i class="fa fa-envelope"></i> <span>Inbox</span>
                        <small class="label pull-right bg-yellow">12</small>
                    </a>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-folder"></i> <span>User Profile</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">

                        <li><a href="${createLink(controller: 'linkSharing', action: 'profile')}"><i
                                class="fa fa-circle-o"></i> Profile</a></li>
                        <li><a href="${createLink(controller: 'linkSharing', action: 'lockscreen')}"><i
                                class="fa fa-circle-o"></i> Lockscreen</a></li>
                    </ul>
                </li>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                Dashboard
                <small>Control panel</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">Dashboard</li>
            </ol>
        </section>

        <section class="content">
            <div class="row">
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-aqua">
                        <div class="inner">
                            <h3>150</h3>

                            <p>Subscriptions</p>
                        </div>

                        <div class="icon">
                            <i class="ion ion-bag"></i>
                        </div>
                        <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>

                <div class="col-lg-3 col-xs-6">
                    <div class="small-box bg-green">
                        <div class="inner">
                            <h3>53</h3>

                            <p>Topics</p>
                        </div>

                        <div class="icon">
                            <i class="ion ion-stats-bars"></i>
                        </div>
                        <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>

                <div class="col-lg-3 col-xs-6">
                    <div class="small-box bg-yellow">
                        <div class="icon">
                            <i class="glyphicon glyphicon-file"></i>
                        </div>

                        <div class="inner">
                            <h1>
                                <a href=""><p>Create Resource</p>
                                </a>

                                <a href="#"><p>Create Link

                                    <p></a>
                            </h1>
                        </div>

                        <div class="icon">
                            <i class="ion ion-link"></i>
                        </div>
                        <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>

                <div class="col-lg-3 col-xs-6">
                    <div class="small-box bg-red">
                        <div class="inner">
                            <h1>

                                <a href="#"><p>Share Document</p></a>
                                <a href="#"><p>Share Link</p></a>
                            </h1>
                        </div>

                        <div class="icon">
                            <i class="glyphicon glyphicon-fire"></i>
                        </div>
                        <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
            </div>

            <div class="row">
                <section class="col-lg-7 connectedSortable">
                    <div class="box box-success">
                        <div class="box-header">
                            <i class="fa fa-comments-o"></i>

                            <h3 class="box-title">Subscriptions</h3>

                            <div class="box-tools pull-right" data-toggle="tooltip" title="Status">
                                <div class="btn-group" data-toggle="btn-toggle">
                                    <button type="button" class="btn btn-default btn-sm active"><i
                                            class="fa fa-square text-green"></i>
                                    </button>
                                    <button type="button" class="btn btn-default btn-sm"><i
                                            class="fa fa-square text-red"></i></button>
                                </div>
                            </div>
                        </div>

                        <div class="box-body chat" id="chat-box">
                            <!-- chat item -->
                            <div class="item">
                                <img src="../../dist/img/user8-128x128.jpg" alt="user image" class="online">

                                <p class="message">
                                    <a href="#" class="name">
                                        <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 2:15</small>
                                        Grails
                                    </a>
                                    <span class="row">
                                        <span class="text-info col-lg-4">
                                            @Sagar
                                        </span>
                                        <span class="text-info  col-lg-4">

                                            Subscription
                                        </span>
                                        <span class="text-info col-lg-4">

                                            Post
                                        </span>
                                    </span>

                                </p>

                                <div class="attachment">

                                    <div class="row">
                                        <span class="col-lg-4">
                                            <a href="#">Unsubscribe</a>
                                        </span>
                                        <span class="col-lg-4">
                                            <span class="badge" style="color:aqua">
                                                50</span>
                                        </span>
                                        <span class="col-lg-4">
                                            <span class="badge" style="color:aqua">
                                                50</span>
                                        </span>

                                    </div>
                                    <br>

                                    <div class="row">
                                        <div class="col-lg-4">

                                            <div class="form-group">
                                                <select class="form-control">

                                                    <option>Serious</option>
                                                    <option>Very Serious</option>
                                                    <option>Casual</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <select class="form-control">
                                                    <option>Private</option>
                                                    <option>Public</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-lg-4">
                                            <div class="col-lg-4">
                                                <span class="glyphicon glyphicon-envelope"
                                                      style="font-size:25px"></span>
                                            </div>

                                            <div class="col-lg-4">

                                                <span class="glyphicon glyphicon-file" style="font-size:25px"></span>
                                            </div>

                                            <div class="col-lg-4">

                                                <span class="glyphicon glyphicon-trash" style="font-size:25px"></span>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                                <!-- /.attachment -->
                            </div>
                            <!-- /.item -->
                            <div class="item">
                                <img src="../../dist/img/user3-128x128.jpg" alt="user image" class="online">

                                <p class="message">
                                    <a href="#" class="name">
                                        <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 2:15</small>
                                        Grails
                                    </a>
                                    <span class="row">
                                        <span class="text-info col-lg-4">
                                            @Sagar
                                        </span>
                                        <span class="text-info col-lg-4">

                                            Subscription
                                        </span>
                                        <span class="text-info col-lg-4">

                                            Post
                                        </span>
                                    </span>

                                </p>

                                <div class="attachment">

                                    <div class="row">
                                        <span class="col-lg-4">
                                            <a href="#">Unsubscribe
                                            </a></span>
                                        <span class="col-lg-4">
                                            <span class="badge" style="color:aqua">
                                                50</span>
                                        </span>
                                        <span class="col-lg-4">
                                            <span class="badge" style="color:aqua">
                                                50</span>
                                        </span>

                                    </div>
                                    <br>

                                    <div class="row">
                                        <div class="col-lg-4">

                                            <div class="form-group">
                                                <select class="form-control">

                                                    <option>Serious</option>
                                                    <option>Very Serious</option>
                                                    <option>Casual</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <select class="form-control">
                                                    <option>Private</option>
                                                    <option>Public</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-lg-4">
                                            <div class="col-lg-4">
                                                <span class="glyphicon glyphicon-envelope"
                                                      style="font-size:25px"></span>
                                            </div>

                                            <div class="col-lg-4">

                                                <span class="glyphicon glyphicon-file" style="font-size:25px"></span>
                                            </div>

                                            <div class="col-lg-4">

                                                <span class="glyphicon glyphicon-trash" style="font-size:25px"></span>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                                <!-- /.attachment -->
                            </div>

                            <!-- chat item -->


                            <!-- /.item -->
                            <!-- chat item -->
                            <!-- /.item -->
                        </div>
                        <!-- /.chat -->

                    </div>

                    <div class="box box-info">
                        <div class="box-header">
                            <i class="fa fa-envelope"></i>

                            <h3 class="box-title">Quick Email</h3>

                            <div class="pull-right box-tools">
                                <button type="button" class="btn btn-info btn-sm" data-widget="remove"
                                        data-toggle="tooltip" title="Remove">
                                    <i class="fa fa-times"></i></button>
                            </div>
                        </div>

                        <div class="box-body">
                            <form action="#" method="post">
                                <div class="form-group">
                                    <input type="email" class="form-control" name="emailto" placeholder="Email to:">
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control" name="subject" placeholder="Subject">
                                </div>

                                <div>
                                    <textarea class="textarea" placeholder="Message"
                                              style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                                </div>
                            </form>
                        </div>

                        <div class="box-footer clearfix">
                            <button type="button" class="pull-right btn btn-default" id="sendEmail">Send
                                <i class="fa fa-arrow-circle-right"></i></button>
                        </div>
                    </div>

                </section>
                <section class="col-lg-5 connectedSortable">

                    <div class="box box-solid bg-light-blue-gradient">
                        <div class="box-header">
                            <div class="pull-right box-tools">
                                <button type="button" class="btn btn-primary btn-sm daterange pull-right"
                                        data-toggle="tooltip" title="Date range">
                                    <i class="fa fa-calendar"></i></button>
                                <button type="button" class="btn btn-primary btn-sm pull-right" data-widget="collapse"
                                        data-toggle="tooltip" title="Collapse" style="margin-right: 5px;">
                                    <i class="fa fa-minus"></i></button>
                            </div>

                            <i class="fa fa-map-marker"></i>

                            <h3 class="box-title">
                                Visitors
                            </h3>
                        </div>

                        <div class="box-body">
                            <div id="world-map" style="height: 250px; width: 100%;"></div>
                        </div>

                        <div class="box-footer no-border">
                            <div class="row">
                                <div class="col-xs-4 text-center" style="border-right: 1px solid #f4f4f4">
                                    <div id="sparkline-1"></div>

                                    <div class="knob-label">Visitors</div>
                                </div>
                                <!-- ./col -->
                                <div class="col-xs-4 text-center" style="border-right: 1px solid #f4f4f4">
                                    <div id="sparkline-2"></div>

                                    <div class="knob-label">Online</div>
                                </div>
                                <!-- ./col -->
                                <div class="col-xs-4 text-center">
                                    <div id="sparkline-3"></div>

                                    <div class="knob-label">Exists</div>
                                </div>
                                <!-- ./col -->
                            </div>
                            <!-- /.row -->
                        </div>
                    </div>

                    <div class="box box-solid bg-green-gradient">
                        <div class="box-header">
                            <i class="fa fa-calendar"></i>

                            <h3 class="box-title">Calendar</h3>
                            <!-- tools box -->
                            <div class="pull-right box-tools">
                                <!-- button with a dropdown -->
                                <div class="btn-group">
                                    <button type="button" class="btn btn-success btn-sm dropdown-toggle"
                                            data-toggle="dropdown">
                                        <i class="fa fa-bars"></i></button>
                                    <ul class="dropdown-menu pull-right" role="menu">
                                        <li><a href="#">Add new event</a></li>
                                        <li><a href="#">Clear events</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">View calendar</a></li>
                                    </ul>
                                </div>
                                <button type="button" class="btn btn-success btn-sm" data-widget="collapse"><i
                                        class="fa fa-minus"></i>
                                </button>
                                <button type="button" class="btn btn-success btn-sm" data-widget="remove"><i
                                        class="fa fa-times"></i>
                                </button>
                            </div>
                        </div>

                        <div class="box-body no-padding">
                            <div id="calendar" style="width: 100%"></div>
                        </div>

                        <div class="box-footer text-black">
                            <div class="row">
                                <div class="col-sm-6">
                                    <!-- Progress bars -->
                                    <div class="clearfix">
                                        <span class="pull-left">Task #1</span>
                                        <small class="pull-right">90%</small>
                                    </div>

                                    <div class="progress xs">
                                        <div class="progress-bar progress-bar-green" style="width: 90%;"></div>
                                    </div>

                                    <div class="clearfix">
                                        <span class="pull-left">Task #2</span>
                                        <small class="pull-right">70%</small>
                                    </div>

                                    <div class="progress xs">
                                        <div class="progress-bar progress-bar-green" style="width: 70%;"></div>
                                    </div>
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-6">
                                    <div class="clearfix">
                                        <span class="pull-left">Task #3</span>
                                        <small class="pull-right">60%</small>
                                    </div>

                                    <div class="progress xs">
                                        <div class="progress-bar progress-bar-green" style="width: 60%;"></div>
                                    </div>

                                    <div class="clearfix">
                                        <span class="pull-left">Task #4</span>
                                        <small class="pull-right">40%</small>
                                    </div>

                                    <div class="progress xs">
                                        <div class="progress-bar progress-bar-green" style="width: 40%;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </section>
            </div>

        </section>
    </div>
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 2.3.2
        </div>
        <strong>Copyright &copy; 2016-2017 <a href="http://tothenew.com">To The New Digital</a>.</strong> All rights
    reserved.
    </footer>

    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>

        <div class="tab-content">
            <div class="tab-pane" id="control-sidebar-home-tab">
                <h3 class="control-sidebar-heading">Recent Activity</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript::;">
                            <i class="menu-icon fa fa-birthday-cake bg-red"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Sagar's Birthday</h4>

                                <p>Will be 23 on April 24th</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript::;">
                            <i class="menu-icon fa fa-user bg-yellow"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Sagar Updated His Profile</h4>

                                <p>New phone +91 9166338872</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript::;">
                            <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">sagar Joined Mailing List</h4>

                                <p>sagar@tothenew.com</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript::;">
                            <i class="menu-icon fa fa-file-code-o bg-green"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">IT Job 254 Executed</h4>

                                <p>Execution time 5 seconds</p>
                            </div>
                        </a>
                    </li>
                </ul>

                <h3 class="control-sidebar-heading">Tasks Progress</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript::;">
                            <h4 class="control-sidebar-subheading">
                                Custom Template Design
                                <span class="label label-danger pull-right">70%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript::;">
                            <h4 class="control-sidebar-subheading">
                                Update Resume
                                <span class="label label-success pull-right">95%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript::;">
                            <h4 class="control-sidebar-subheading">
                                Laravel Integration
                                <span class="label label-warning pull-right">50%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript::;">
                            <h4 class="control-sidebar-subheading">
                                Back End Framework
                                <span class="label label-primary pull-right">68%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
                            </div>
                        </a>
                    </li>
                </ul>

            </div>
            <!-- Stats tab content -->
            <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>

            <div class="tab-pane" id="control-sidebar-settings-tab">
                <form method="post">
                    <h3 class="control-sidebar-heading">General Settings</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Report panel usage
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            Some information about this general settings option
                        </p>
                    </div>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Allow mail redirect
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            Other sets of options are available
                        </p>
                    </div>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Expose author name in posts
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            Allow the user to show his name in blog posts
                        </p>
                    </div>

                    <h3 class="control-sidebar-heading">Chat Settings</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Show me as online
                            <input type="checkbox" class="pull-right" checked>
                        </label>
                    </div>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Turn off notifications
                            <input type="checkbox" class="pull-right">
                        </label>
                    </div>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Delete chat history
                            <a href="javascript::;" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
                        </label>
                    </div>
                </form>
            </div>
        </div>
    </aside>

    <div class="control-sidebar-bg"></div>
</div>


%{--<script src="../../../web-app/plugins/jQuery/jQuery-2.2.0.min.js"></script>--}%
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
    //</script>
<script src="${resource(dir: 'bootstrap/js', file: 'bootstrap.min.js')}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="${resource(dir: 'plugins/morris', file: 'morris.min.js')}"></script>
%{----}%
<script src="${resource(dir: 'plugins/sparkline', file: 'jquery.sparkline.min.js')}"></script>
<script src="${resource(dir: 'plugins/jvectormap', file: 'jquery-jvectormap-1.2.2.min.js')}"></script>
%{----}%
<script src="${resource(dir: 'plugins/jvectormap', file: 'jquery-jvectormap-world-mill-en.js')}"></script>
<script src="${resource(dir: 'plugins/knob', file: 'jquery.knob.js')}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>
<script src="${resource(dir: 'plugins/daterangepicker', file: 'daterangepicker.js')}"></script>
%{----}%
<script src="${resource(dir: 'plugins/datepicker', file: 'bootstrap-datepicker.js')}"></script>
<script src="${resource(dir: 'plugins/bootstrap-wysihtml5/', file: 'bootstrap3-wysihtml5.all.min.js')}"></script>
<script src="${resource(dir: 'plugins/slimScroll', file: 'jquery.slimscroll.min.js')}"></script>
%{----}%
<script src="${resource(dir: 'plugins/fastclick', file: 'fastclick.js')}"></script>

<script src="${resource(dir: 'dist/js', file: 'app.min.js')}"></script>

%{--<script src="${resource(dir: 'dist/js/pages', file: 'dashboard.js')}"></script>--}%
<script src="${resource(dir: 'dist/js', file: 'demo.js')}"></script>

<script type="text/javascript">

    var topic = function searchTopic(description) {
        <g:remoteFunction  controller="resource" action="search"  params="\'description=\'+description" onSuccess="justDoIt(data,textStatus)"/>
    };

    function justDoIt(data, textStatus) {
        if (data) {

            var obj = eval(data.resources)
            //var obj = JSON.parse(JSON.stringify(data));
            //var ob=data['resources']
            //console.log(ob[0].createdBy[0]);
//        console.log(data['resources'][0]);
            $("#searchform").addClass("dropdown-toggle");
            $("#searchform").attr("data-toggle", "dropdown");

            if ($("#searchform").val() == null || $("#searchform").val() == "") {
                $("#dropdownsearch").empty();
                $("#dropdownheader").text('Record not Found');
            }

            $.each(obj, function (key, value) {
                $("#dropdownheader").text(obj.length+" Matching Records are Found");
                console.log(key + ": " + value.id);
                <g:set var="myval" value="[id:value?.id]"/>

                $("#dropdownsearch").append(
                        "<li>" +
                        "<a href='${createLink(controller:'linkSharing',action:'showResource',params:myval)}' >" +
                        "<h4>" + value.description + "<small>" +
                        "<i class='fa fa-clock-o'></i> 5 mins</small>" +
                        "</h4>" +
                        "<p>" + value+ "</p>" +
                        "</a>" +
                        "</li>");
            });

        }
    }
</script>

<g:render template="../templates/message"/>
<g:render template="../templates/Topic/email"/>
<g:render template="../templates/LinkResource/create"/>
<g:render template="../templates/DocumentResource/create"/>
<g:render template="../templates/Topic/create"/>

</body>
</html>


