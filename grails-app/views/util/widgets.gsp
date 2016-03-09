

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>LinkSharing | Trending Topics</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="../dist/css/star-rating.css" media="all" rel="stylesheet" type="text/css"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js">
    </script>
    <script src="../dist/js/star-rating.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="/dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="/dist/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="/plugins/iCheck/flat/blue.css">
    <link rel="stylesheet" href="/plugins/morris/morris.css">
    <link rel="stylesheet" href="/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet" href=" /plugins/daterangepicker/daterangepicker-bs3.css">
    <link rel="stylesheet" href="/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>


</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <header class="main-header">
        <!-- Logo -->
        <a href="/linkSharing/mainpage" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>L</b>S</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>Link</b>Sharing</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li class="dropdown notifications-menu">
                        <form id="searchform" class="navbar-form" role="search" style="padding-left:30px">
                            <div class="input-group">
                                <input id="searchtxt" type="text" onkeyup="topic(this.value)" onfocus="topic(this.value)" name="searchtxt"
                                       class="col-md-12 form-control" placeholder="Search topics..."/>

                                <div class="input-group-btn ">

                                    <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                                </div>

                            </div>

                        </form>
                        <ul class="dropdown-menu">
                            <li class="header" id="dropdownheader"></li>
                            <li>
                                <ul class="menu" id="dropdownsearch">
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
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li><!-- start message -->
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Support Team
                                                <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <!-- end message -->
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="../dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                AdminLTE Design Team
                                                <small><i class="fa fa-clock-o"></i> 2 hours</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="../dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Developers
                                                <small><i class="fa fa-clock-o"></i> Today</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="../dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Sales Department
                                                <small><i class="fa fa-clock-o"></i> Yesterday</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="../dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
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
                            <li class="footer"><a href="../mailbox/mailbox.gsp">See All Messages</a></li>
                        </ul>
                    </li>
                    <!-- Notifications: style can be found in dropdown.less -->
                    <li class="dropdown notifications-menu">
                        <a href="#" data-target="#createTopic" data-toggle="modal" class="dropdown-toggle" data-toggle="dropdown">
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
                        <a href="#" data-target="#shareDoc" data-toggle="modal"  class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-file-o"></i>
                            <span class="label label-success"></span>
                        </a>

                    </li>

                    <li class="dropdown tasks-menu">
                        <a href="#" data-target="#sendInv" data-toggle="modal"  class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-send-o"></i>
                            <span class="label label-success"></span>
                        </a>

                    </li>
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="../dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">Ritesh Jain</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                <p>
                                    Ritesh Jain - Web Developer Trainee
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
                                    <a href="/linkSharing/profile" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <a href="/login/index" class="btn btn-default btn-flat">Sign out</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <!-- Control Sidebar Toggle Button -->
                    <li>
                        <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>Ritesh Jain</p>
                    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>
            <!-- search form -->
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                        <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                        </button>
                    </span>
                </div>
            </form>
            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li class="header">LinkSharing</li>
                <li class="treeview">
                    <a href="/linkSharing/dashboard">
                        <i class="fa fa-dashboard"></i> <span>Dashboard</span> <i class="fa fa-angle-left pull-right"></i>
                    </a>

                </li>
                <li class="active">
                    <a href="/linkSharing/trendingPost">
                        <i class="fa fa-th"></i> <span>Trending Topics</span>
                        <small class="label pull-right bg-green">new</small>
                    </a>
                </li>
                <li class="treeview">
                    <a href="/linkSharing/accountSetting">
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

                        <li><a href="/linkSharing/admin"><i class="fa fa-circle-o"></i> Data tables</a></li>
                    </ul>
                </li>
                <li>
                    <a href="/linkSharing/calender">
                        <i class="fa fa-calendar"></i> <span>Calendar</span>
                        <small class="label pull-right bg-red">3</small>
                    </a>
                </li>
                <li>

                    <a href="/linkSharing/inbox">
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

                        <li><a href="/linkSharing/profile"><i class="fa fa-circle-o"></i> Profile</a></li>
                        <li><a href="/linkSharing/lockscreen"><i class="fa fa-circle-o"></i> Lockscreen</a></li>
                    </ul>
                </li>

            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Trending Topics
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">Trending Topics</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">

            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-aqua"><i class="fa fa-envelope-o"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Subscriptions</span>
                            <span class="info-box-number">1,410</span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green"><i class="glyphicon glyphicon-file"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Topics</span>
                            <span class="info-box-number">410</span>
                        </div>
                    </div>

                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-yellow"><i class="glyphicon glyphicon-link"></i></span>

                        <div class="info-box-content">
                            <a href="#">      <span class="info-box-text">Create Link</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-red"><i class="fa fa-files-o"></i></span>

                        <div class="info-box-content">
                            <a href="#">
                                <span class="info-box-text">Create Doc</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <h2 class="page-header">Trending Topics</h2>
            <div class="row">
                <div class="col-md-6 container" >
                    <div class="box box-success">
                        <div class="box-header">
                            <i class="fa fa-comments-o"></i>
                            <h3 class="box-title">Subscriptions</h3>

                            <div class="box-tools pull-right" data-toggle="tooltip" title="Status">
                                <div class="btn-group" data-toggle="btn-toggle">
                                    <button type="button" class="btn btn-default btn-sm active"><i class="fa fa-square text-green"></i>
                                    </button>
                                    <button type="button" class="btn btn-default btn-sm"><i class="fa fa-square text-red"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="box-body chat" id="chat-box" >


                            <div class="item" style="border-bottom:2px solid gray;padding-bottom:10px " >
                                <img src="../dist/img/user8-128x128.jpg" alt="user image" class="online">

                                <p class="message">
                                    <a href="#" class="name">
                                        <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 2:15</small>
                                        Java                  </a>
                                    <span class="row">
                                        <span class="text-info col-lg-4">
                                            @SagarMal
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
                                            <a href="#">Subscribe</a>
                                        </span>


                                        <span class="col-lg-4">
                                            <span class="badge" style="color:aqua">
                                                2
                                            </span>
                                        </span>
                                        <span class="col-lg-4">
                                            <span class="badge" style="color:aqua">

                                                2

                                            </span>
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
                                                <span class="glyphicon glyphicon-envelope" style="font-size:25px"></span>
                                            </div>
                                            <div class="col-lg-4">

                                                <span class="glyphicon glyphicon-file" style="font-size:25px"></span>
                                            </div>
                                            <div class="col-lg-4">

                                                <span class="glyphicon glyphicon-trash"style="font-size:25px" ></span>
                                            </div>
                                        </div>

                                    </div>


                                </div>
                                <!-- /.attachment -->
                            </div>

                            <div class="item" style="border-bottom:2px solid gray;padding-bottom:10px " >
                                <img src="../dist/img/user8-128x128.jpg" alt="user image" class="online">

                                <p class="message">
                                    <a href="#" class="name">
                                        <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 2:15</small>
                                        Grails                  </a>
                                    <span class="row">
                                        <span class="text-info col-lg-4">
                                            @SagarMal
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
                                            <a href="#">Subscribe</a>
                                        </span>


                                        <span class="col-lg-4">
                                            <span class="badge" style="color:aqua">
                                                2
                                            </span>
                                        </span>
                                        <span class="col-lg-4">
                                            <span class="badge" style="color:aqua">

                                                2

                                            </span>
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
                                                <span class="glyphicon glyphicon-envelope" style="font-size:25px"></span>
                                            </div>
                                            <div class="col-lg-4">

                                                <span class="glyphicon glyphicon-file" style="font-size:25px"></span>
                                            </div>
                                            <div class="col-lg-4">

                                                <span class="glyphicon glyphicon-trash"style="font-size:25px" ></span>
                                            </div>
                                        </div>

                                    </div>


                                </div>
                                <!-- /.attachment -->
                            </div>

                            <div class="item" style="border-bottom:2px solid gray;padding-bottom:10px " >
                                <img src="../dist/img/user8-128x128.jpg" alt="user image" class="online">

                                <p class="message">
                                    <a href="#" class="name">
                                        <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 2:15</small>
                                        Software Engineering                  </a>
                                    <span class="row">
                                        <span class="text-info col-lg-4">
                                            @Ritesh
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
                                            <a href="#">Subscribe</a>
                                        </span>


                                        <span class="col-lg-4">
                                            <span class="badge" style="color:aqua">
                                                1
                                            </span>
                                        </span>
                                        <span class="col-lg-4">
                                            <span class="badge" style="color:aqua">

                                                1

                                            </span>
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
                                                <span class="glyphicon glyphicon-envelope" style="font-size:25px"></span>
                                            </div>
                                            <div class="col-lg-4">

                                                <span class="glyphicon glyphicon-file" style="font-size:25px"></span>
                                            </div>
                                            <div class="col-lg-4">

                                                <span class="glyphicon glyphicon-trash"style="font-size:25px" ></span>
                                            </div>
                                        </div>

                                    </div>


                                </div>
                                <!-- /.attachment -->
                            </div>

                            <div class="item" style="border-bottom:2px solid gray;padding-bottom:10px " >
                                <img src="../dist/img/user8-128x128.jpg" alt="user image" class="online">

                                <p class="message">
                                    <a href="#" class="name">
                                        <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 2:15</small>
                                        Autometa                  </a>
                                    <span class="row">
                                        <span class="text-info col-lg-4">
                                            @Ritesh
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
                                            <a href="#">Subscribe</a>
                                        </span>


                                        <span class="col-lg-4">
                                            <span class="badge" style="color:aqua">
                                                1
                                            </span>
                                        </span>
                                        <span class="col-lg-4">
                                            <span class="badge" style="color:aqua">

                                                1

                                            </span>
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
                                                <span class="glyphicon glyphicon-envelope" style="font-size:25px"></span>
                                            </div>
                                            <div class="col-lg-4">

                                                <span class="glyphicon glyphicon-file" style="font-size:25px"></span>
                                            </div>
                                            <div class="col-lg-4">

                                                <span class="glyphicon glyphicon-trash"style="font-size:25px" ></span>
                                            </div>
                                        </div>

                                    </div>


                                </div>
                                <!-- /.attachment -->
                            </div>
                            <!-- /.item -->

                            <!-- chat item -->


                            <!-- /.item -->
                            <!-- chat item -->
                            <!-- /.item -->
                        </div>
                        <!-- /.chat -->

                    </div>



                </div>
                <!-- /.col -->
                <div class="col-md-6">
                    <div class="box box-success">
                        <div class="box-header">
                            <i class="fa fa-comments-o"></i>

                            <h3 class="box-title">Rating to Topic</h3>

                            <div class="box-tools pull-right" data-toggle="tooltip" title="Status">
                                <div class="btn-group" data-toggle="btn-toggle">
                                    <button type="button" class="btn btn-default btn-sm active"><i class="fa fa-square text-green"></i>
                                    </button>
                                    <button type="button" class="btn btn-default btn-sm"><i class="fa fa-square text-red"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="box-body chat" id="chat-box">
                            <!-- chat item -->
                            <div class="item">
                                <img src="../dist/img/user8-128x128.jpg" alt="user image" class="online">

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


                                            <div class="col-lg-1"></div>
                                            <input id="input-21d" type="number" onchange="ratingResource(this.value)" class="rating" min=0 max=5 step=0.5 data-size="sm">



                                        </span>
                                    </span>

                                </p>
                                <div class="attachment">

                                    <div class="row">
                                        <span>Life is like a game of chess. To win you have to make a move. Knowing which move to make comes with IN-SIGHT and knowledge, and by learning the lessons that are acculated along the way. </span>
                                    </div>
                                    <br>
                                    <div class="row">


                                        <img src="../dist/img/facebook.png"/>
                                        <img src="../dist/img/twtr.png"/>
                                        <img src="../dist/img/google.png"/> &nbsp;&nbsp;
                                        <a href="#"><u>Delete</u></a>&nbsp;&nbsp;
                                        <a href="#"><u>Edit</u></a>&nbsp;&nbsp;
                                        <a href="#"><u>Download</u></a>&nbsp;&nbsp;
                                        <a href="#"><u>View Full</u></a>

                                    </div>




                                </div>
                                <!-- /.attachment -->
                            </div>
                            <!-- /.item -->

                            <!-- chat item -->


                            <!-- /.item -->
                            <!-- chat item -->
                            <!-- /.item -->
                        </div>
                        <!-- /.chat -->

                    </div>
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 2.3.2
        </div>
        <strong>Copyright &copy; 2016-2017 <a href="http://tothenew.com">To The New Digital</a>.</strong> All rights
    reserved.
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- Home tab content -->
            <div class="tab-pane" id="control-sidebar-home-tab">
                <h3 class="control-sidebar-heading">Recent Activity</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript::;">
                            <i class="menu-icon fa fa-birthday-cake bg-red"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                                <p>Will be 23 on April 24th</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript::;">
                            <i class="menu-icon fa fa-user bg-yellow"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                                <p>New phone +1(800)555-1234</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript::;">
                            <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                                <p>nora@example.com</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript::;">
                            <i class="menu-icon fa fa-file-code-o bg-green"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                                <p>Execution time 5 seconds</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->

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
                <!-- /.control-sidebar-menu -->

            </div>
            <!-- /.tab-pane -->
            <!-- Stats tab content -->
            <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
            <!-- /.tab-pane -->
            <!-- Settings tab content -->
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
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Allow mail redirect
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            Other sets of options are available
                        </p>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Expose author name in posts
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            Allow the user to show his name in blog posts
                        </p>
                    </div>
                    <!-- /.form-group -->

                    <h3 class="control-sidebar-heading">Chat Settings</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Show me as online
                            <input type="checkbox" class="pull-right" checked>
                        </label>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Turn off notifications
                            <input type="checkbox" class="pull-right">
                        </label>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Delete chat history
                            <a href="javascript::;" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
                        </label>
                    </div>
                    <!-- /.form-group -->
                </form>
            </div>
            <!-- /.tab-pane -->
        </div>
    </aside>
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div>
<script src="../../../web-app/plugins/jQuery/jQuery-2.2.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="/plugins/morris/morris.min.js"></script>

<script src="/plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>

<script src="/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="/plugins/knob/jquery.knob.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>
<script src="/plugins/daterangepicker/daterangepicker.js"></script>

<script src="/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="/plugins/slimScroll/jquery.slimscroll.min.js"></script>

<script src="/plugins/fastclick/fastclick.js"></script>

<script src="/dist/js/app.min.js"></script>

<script src="/dist/js/pages/dashboard.js"></script>
<script src="/dist/js/demo.js"></script>

<script type="text/javascript">
    function ratingResource(score) {
        console.log("score----------------------"+score)


        jQuery.ajax({type:'POST',data:'id='+ 1 + '&score='+score, url:'/resource/saveRating',success:function(data,textStatus){justDoIt(data,textStatus);},error:function(XMLHttpRequest,textStatus,errorThrown){}});


    };

    function justDoIt(data, textStatus) {
        if (data) {

            var obj = eval(data.resources)
            console.log(obj)
        }
    }
</script>

<div class="modal fade" id="sendInv" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Send Invitation</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <div class="col-lg-3">
                            <label for="email">Email-Id<span style="color:red">*</span>:</label>
                        </div>
                        <div class="col-lg-8">

                            <input type="email" class="form-control" id="email" placeholder="Enter your Email-Id">
                        </div>
                    </div>
                    <br><br><br>
                    <div class="form-group">
                        <div class="col-lg-3">
                            <label>Topic<span style="color:red">*</span>:</label>
                        </div>
                        <div class="col-lg-8">
                            <select class="form-control">

                                %
                                <option>Software Engineering</option>

                                %
                                <option>Autometa</option>

                            </select>
                        </div>
                        <br><br>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <div class="row">

                    <div class="col-lg-4 col-lg-offset-2">
                        <button type="button" class="btn btn-info">Invite</button>
                    </div>
                    <div class="col-lg-4">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="/js/jquery-2.2.1.js"></script>

<div class="modal fade" id="shareLink" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <div id="alertmsg1" class="hidden"><span id="spanmsg1"></span></div>
                <button  type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title" id="addContactModalLabel">Share Link</h4>
                <div id="loaderId1" style="display: none" >
                    <img src="/assets/spinner.gif"/> Saving..
                </div>
            </div>
            <form id="linkshareform">
                <div class="modal-body">
                    <div class="form-group">
                        <div class="col-lg-2">
                            <label for="url">Link<span style="color:red">*</span>:</label>
                        </div>
                        <div class="col-lg-10">
                            <input type="url" required="" class="form-control" id="url" name="url" placeholder="Link..."/>
                        </div>
                    </div>
                    <br><br>
                    <div class="form-group">
                        <div class="col-lg-2">
                            <label for="description">Description<span style="color:red">*</span>:</label>
                        </div>
                        <div class="col-lg-10">
                            <textarea required="" cols="12" class="form-control" id="description" name="description" placeholder="Description..." ></textarea>
                        </div>
                    </div>
                    <br><br><br><br>

                    <div class="form-group">
                        <div class="col-lg-2">
                            <label>Topic:</label>
                        </div>
                        <div class="col-lg-10">
                            <select class="form-control" id="topicname" name="topicname" data-toggle="tooltip" title="Share Link with Given Topic Name">

                                --}%

                                <option>Software Engineering</option>
                                --}%

                                <option>Autometa</option>


                            </select>
                        </div>
                    </div>
                    <br><br>
                </div>
                <div class="modal-footer">
                    <div class="row">

                        <div class="col-lg-4 col-lg-offset-2">
                            <button type="submit" id="save" class="btn btn-primary">Save</button> </div>
                        <div class="col-lg-3">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript">
    $( document ).ajaxStart(function() {
        $("#loaderId1").show()
    });
    $( document ).ajaxStop(function() {
        $("#loaderId1").hide()
    });
    $("#linkshareform").submit(function(e)
    {
        var postData = $(this).serializeArray();
        var formURL = "/resource/save";
        $.ajax(
                {
                    url : formURL,
                    type: "POST",
                    data : postData,
                    success:function(data, textStatus, jqXHR)
                    {
                        if(data.message!="Record is not saved due to not Valid URL")
                            $("#spanmsg1").addClass("alert alert-success")
                        else
                            $("#spanmsg1").addClass("alert alert-danger")

                        $("#spanmsg1").text(data.message)

                        $("#alertmsg1").toggleClass('hidden');
                        $("#linkshareform")[0].reset()
                        setTimeout(function(){$("#alertmsg1").toggleClass('hidden');$("#spanmsg1").removeClass("alert alert-success")}, 3000);

                    },
                    dataType: 'json',
                    error: function(jqXHR, textStatus, errorThrown)
                    {
                        $("#spanmsg1").addClass("alert alert-danger")
                        $("#spanmsg1").text(data.message)
                        $("#alertmsg1").toggleClass('hidden');
                        $("#linkshareform")[0].reset()
                        setTimeout(function(){$("#alertmsg1").toggleClass('hidden');$("#spanmsg1").removeClass("alert alert-success")}, 3000);

                    }

                });
        e.preventDefault();	//STOP default action
    });
</script>

<div class="modal fade" id="shareDoc" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Share Document </h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <div class="col-lg-3">
                            <label>Document Name<span style="color:red">*</span>:</label>
                        </div>
                        <div class="col-lg-8">
                            <input type="text" class="form-control offset-5" id="url" placeholder="Enter URL">
                        </div>
                    </div>
                    <br><br><br>
                    <div class="form-group">
                        <div class="col-lg-3">
                            <label>Description:</label>
                        </div>
                        <div class="col-lg-8">
                            <textarea class="form-control" cols="15" ></textarea>
                        </div>
                    </div>
                    <br><br><br>
                    <div class="form-group">
                        <div class="col-lg-3">
                            <label></label>Topic<span style="color:red">*</span>:</label>
                        </div>
                        <div class="col-lg-8">
                            <select class="form-control">
                                --}%

                                <option>Software Engineering</option>
                                --}%

                                <option>Autometa</option>

                            </select>
                        </div>
                        <br><br>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <div class="row">
                    <div class="col-lg-4 col-lg-offset-2">
                        <button type="button" class="btn btn-info">Share</button>
                    </div>
                    <div class="col-lg-4">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="/js/jquery-2.2.1.js"></script>
<div class="modal fade" id="createTopic" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <div id="alertmsg" class="hidden"><span id="spanmsg"></span></div>
                <button  id="closetopic"type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title" id="addContactModalLabel">Create Topic</h4>
                <div id="loaderId" style="display: none" >
                    <img src="/assets/spinner.gif"/> Saving..
                </div>
            </div>
            <form id="ajaxform">
                <div class="modal-body">
                    <div class="form-group">
                        <div class="col-lg-2">
                            <label for="name">Name<span style="color:red">*</span>:</label>
                        </div>
                        <div class="col-lg-10">
                            <input type="text" required="" class="form-control" id="name" name="name" placeholder="Enter your Name"/>
                        </div>
                    </div>
                    <br><br>
                    <div class="form-group">
                        <div class="col-lg-2">
                            <label>Visibility:</label>
                        </div>
                        <div class="col-lg-10">
                            <select class="form-control" id="visibility" name="visibility" data-toggle="tooltip" title="Delete Edit and private will show to topic creater and admin">
                                <option>PUBLIC</option>
                                <option>PRIVATE</option>
                            </select>
                        </div>
                    </div>
                    <br><br>
                </div>
                <div class="modal-footer">
                    <div class="row">

                        <div class="col-lg-4 col-lg-offset-2">
                            <button type="submit" id="save" class="btn btn-primary">Save</button> </div>
                        <div class="col-lg-3">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </div>
                0            </form>
        </div>
    </div>

</div>
<script type="text/javascript">
    $( document ).ajaxStart(function() {
        $("#loaderId").show()
    });
    $( document ).ajaxStop(function() {
        $("#loaderId").hide()
    });
    $("#ajaxform").submit(function(e)
    {
        var postData = $(this).serializeArray();
        var formURL = "/topic/save";
        $.ajax(
                {
                    url : formURL,
                    type: "POST",
                    data : postData,
                    success:function(data, textStatus, jqXHR)
                    {
                        if(data.message!="This Topic name is already Exist!.Please Change Topic Name!")
                            $("#spanmsg").addClass("alert alert-success")
                        else
                            $("#spanmsg").addClass("alert alert-danger")

                        $("#spanmsg").text(data.message)

                        $("#alertmsg").toggleClass('hidden');
                        $("#ajaxform")[0].reset();
                        setTimeout(function(){$("#alertmsg").toggleClass('hidden');$("#spanmsg").removeClass("alert alert-success")}, 3000);

                    },
                    dataType: 'json',
                    error: function(jqXHR, textStatus, errorThrown)
                    {
                        $("#spanmsg").addClass("alert alert-danger")
                        $("#spanmsg").text(data.message);
                        $("#alertmsg").toggleClass('hidden');
                        $("#ajaxform")[0].reset()
                        setTimeout(function(){$("#alertmsg").toggleClass('hidden');$("#spanmsg").removeClass("alert alert-success")}, 3000);

                    }

                });
        e.preventDefault();	//STOP default action
    });
</script>
<g:render template="../templates/resource/search"/>

</body>
</html>
