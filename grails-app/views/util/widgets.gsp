<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>LinkSharing | Trending Topics</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js">
    </script>

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
        <a href="${createLink(controller:"linkSharing",action:"dashboard" )}" class="logo">
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
                            %{--<img src="../dist/img/user2-160x160.jpg" class="user-image" alt="User Image">--}%
                            <ls:userImage userId="${session?.user?.id}" imageType="user-image"/>

                            <span class="hidden-xs">${session.username}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                %{--<img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">--}%
                                <ls:userImage userId="${session?.user?.id}" imageType="img-circle"/>

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
                                    <a href="/linkSharing/profile" class="btn btn-default btn-flat">Profile</a>
                                </div>
                            <div class="pull-right">
                                <a href="${createLink(controller: "login", action: "logout")}"
                                   class="btn btn-default btn-flat">Sign out</a>
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
                    <ls:userImage userId="${session?.user?.id}" imageType="img-circle"/>

                    %{--<img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">--}%
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
    <g:if test="${session.user.admin}">
        <li class="treeview">
            <a href="${createLink(controller: 'linkSharing', action: 'admin')}">
                <i class="fa fa-table"></i> <span>Admin</span>
                <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">

                <li><a href="${createLink(controller: 'linkSharing', action: 'admin')}"><i
                        class="fa fa-circle-o"></i> Data tables</a></li>
            </ul>
        </li>
    </g:if>

    <li>
                    <a href="/linkSharing/calender">
                        <i class="fa fa-calendar"></i> <span>Calendar</span>
                        <small class="label pull-right bg-red">3</small>
                    </a>
                </li>
                <li>

                    <a href="/linkSharing/inbox">
                        <i class="fa fa-envelope"></i> <span>Inbox</span>
                        <small class="label pull-right bg-yellow"></small>
                    </a>
                </li>
                <li class="treeview">
                    <a href="${createLink(controller: 'linkSharing', action: 'profile')}">
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
                            <span class="info-box-number">${totalSubscription}</span>
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
                            <span class="info-box-number">${totalTopic}</span>
                        </div>
                    </div>

                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-yellow"><i class="glyphicon glyphicon-link"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Posts</span>
                            <span class="info-box-number">${totalPost}</span>
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
                    <div style="max-height:500px; overflow-y:scroll" class="box box-success">
                        <div class="box-header">
                            <i class="fa fa-comments-o"></i>
                            <h3 class="box-title">Trending Topics</h3>
                            <div id="alertmsg" class="hidden col-lg-offset-4"><span id="spanmsg"></span></div>

                            <div class="box-tools pull-right" data-toggle="tooltip" title="Status">
                                <div class="btn-group" data-toggle="btn-toggle">
                                    <button type="button" class="btn btn-default btn-sm active"><i class="fa fa-square text-green"></i>
                                    </button>
                                    <button type="button" class="btn btn-default btn-sm"><i class="fa fa-square text-red"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="box-body chat" id="chat-box" >
                                     <g:each in="${trendingTopicList}" var="trendingTopic">
                            <div class="item" style="border-bottom:2px solid gray;padding-bottom:10px " >
                                %{--<img src="../dist/img/user8-128x128.jpg" alt="user image" class="online">--}%
                                <ls:userImage userId="${trendingTopic?.createdBy?.id}" imageType="online"/>


                                <p class="message">
                                    <a href="#" class="name">
                                        <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 2:15</small>

                                    <g:if test="${trendingTopic?.topic?.isExistResource(trendingTopic?.id)}">
                                        <a href="${createLink(controller:"linkSharing",action:"showResource" ,params:[id:trendingTopic?.id])}"> ${trendingTopic?.name}</a>
                                        </a>
                                    </g:if>
                                    <g:else>
                                        <a href="#" onclick="alert('Topic is not Subscribed')">${trendingTopic?.name}</a>
                                    </g:else>







                                    </a>
                                    <span class="row">
                                        <span class="text-info col-lg-4">
                                            @${trendingTopic?.createdBy}
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
                                            <g:if test="${session.email != trendingTopic?.createdBy?.email}">
                                                %{--<ls:showSubscribe topicId="${trendingTopic?.id}"></ls:showSubscribe>--}%
                                                <g:if test="${session.user?.isSubscribed(trendingTopic?.id)}">
                                                    <button class="btn btn-link" onclick="unSubscribeTopic(${trendingTopic?.id})">UnSubscribe </button>

                                                </g:if>
                                                <g:else>
                                                    <button class="btn btn-link" onclick="subscribeTopic(${trendingTopic?.id})">Subscribe </button>

                                                </g:else>

                                            </g:if>

                                        </span>


                                        <span class="col-lg-4">
                                            <span class="badge" style="color:aqua">
                                                ${trendingTopic?.countSubscription}
                                            </span>
                                        </span>
                                        <span class="col-lg-4">
                                            <span class="badge" style="color:aqua">

                                                ${trendingTopic?.countPost}

                                            </span>
                                        </span>

                                    </div>
                                    <br>
                                    <div class="row" id="updateTopic${trendingTopic?.id}" style="display: none">
                                        <form id="updateTopicForm${trendingTopic?.id}">
                                            <div class="col-lg-6">
                                                <input type="hidden" name="id" value="${trendingTopic?.id}">
                                                <input type="text" class="form-control" name="name">
                                            </div>
                                            <div class="col-lg-4">

                                                <input type="submit" class="btn btn-success" value="Save">
                                            </div>
                                        </form>
                                    </div>
<br>
                                    <div class="row">
                                        <div class="col-lg-4">

                                            <div class="form-group">
                                                %{--${trendingTopic?.seriousness}--}%
                                                <select id="seriousnessID" class="form-control"
                                                        onchange="resourceSeriousness(${trendingTopic?.createdBy?.id},'${trendingTopic?.id}',this.value)">

                                                %{--onchange="resourceSeriousness(this.value)">--}%
                                                %{--onchange="resourceSeriousness(this.value)">--}%
                                                %{--params: '\'userId=\'+ '\"{topicDetails?.createdBy.id}\"' +\'&topicId=\'+ ${topicDetails?.id}+ \'&seriousness=\'+seriouness' )}">--}%
                                                    <g:if test="${trendingTopic?.seriousness.equals(Enums.Seriousness.VERY_SERIOUS.toString())}">

                                                        <option selected>${Enums.Seriousness.VERY_SERIOUS}</option>
                                                        <option>${Enums.Seriousness.SERIOUS}</option>
                                                        <option>${Enums.Seriousness.CASUAL}</option>
                                                    </g:if>
                                                    <g:elseif test="${trendingTopic?.seriousness.equals(Enums.Seriousness.SERIOUS.toString())}">

                                                        <option> ${Enums.Seriousness.VERY_SERIOUS}</option>
                                                        <option selected>${Enums.Seriousness.SERIOUS}</option>
                                                        <option>${Enums.Seriousness.CASUAL}</option>
                                                    </g:elseif>
                                                    <g:elseif test="${trendingTopic?.seriousness.equals(Enums.Seriousness.CASUAL.toString())}">

                                                        <option>${Enums.Seriousness.VERY_SERIOUS}</option>
                                                        <option>${Enums.Seriousness.SERIOUS}</option>
                                                        <option selected>${Enums.Seriousness.CASUAL}</option>
                                                    </g:elseif>

                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <g:if test="${session.email==trendingTopic?.createdBy?.email}">

                                                    <select class="form-control"
                                                            onchange="changeVisibility(${trendingTopic?.createdBy?.id},'${trendingTopic?.id}',this.value)">
                                                        <g:if test="${trendingTopic?.visibility.equals(Enums.Visibility.PRIVATE.toString())}">

                                                            <option selected>${Enums.Visibility.PRIVATE}</option>

                                                            <option>${Enums.Visibility.PUBLIC}</option>
                                                        </g:if>
                                                        <g:else>
                                                            <option> ${Enums.Visibility.PRIVATE}</option>

                                                            <option selected>${Enums.Visibility.PUBLIC}</option>
                                                        </g:else>
                                                    </select>
                                                </g:if>

                                            </div>
                                        </div>

                                        <div class="col-lg-4">
                                            <div class="col-lg-4">
                                                <a href="#" data-target="#sendInv" data-toggle="modal" class="dropdown-toggle"
                                                   data-toggle="dropdown">
                                                    <span class="glyphicon glyphicon-envelope"
                                                          style="font-size:25px"></span>

                                                </a>
                                            </div>
                                            <div class="col-lg-4">

                                                <g:if test="${(session.email==trendingTopic?.createdBy?.email)|| session.user.admin}">
                                                    <a href="#"  class="update" id="updateTopicName_${trendingTopic?.id}"><span class="glyphicon glyphicon-file" style="font-size:25px"></span>
                                                    </a>

                                                </g:if>

                                            </div>
                                            <div class="col-lg-4">
                                         <g:if test="${(session.email==trendingTopic?.createdBy?.email)|| session.user.admin}">

                                                <a href="" onclick="deleteTopic(${trendingTopic.id})">  <span class="glyphicon glyphicon-trash" style="font-size:25px"></span></a>
                                         </g:if>
                                             </div>
                                        </div>

                                    </div>


                                </div>
                                <!-- /.attachment -->
                            </div>
                                     </g:each>

                        </div>
                        <!-- /.chat -->

                    </div>
                    <div style="max-height:500px; overflow-y:scroll" class="box box-success">
                        <div class="box-header">
                            <i class="fa fa-comments-o"></i>

                            <h3 class="box-title">Top Post</h3>

                            <div class="box-tools pull-right" data-toggle="tooltip" title="Status">
                                <div class="btn-group" data-toggle="btn-toggle">
                                    <button type="button" class="btn btn-default btn-sm active"><i class="fa fa-square text-green"></i>
                                    </button>
                                    <button type="button" class="btn btn-default btn-sm"><i class="fa fa-square text-red"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="box-body chat" id="chat-box">
                        <g:set var="url" value="${""}"/>
                            <g:each in="${topPostResource}" var="topPost">
                                <div class="item" style="border-bottom:2px solid gray;padding-bottom:10px " >
                                    <div id="alertmsg" class="hidden col-lg-offset-4"><span id="spanmsg"></span></div>

                                    %{--<img src="../dist/img/user8-128x128.jpg" alt="user image" class="online">--}%
                                    <ls:userImage userId="${topPost?.createdBy?.id}" imageType="online"/>
                                    <p class="message">
                                        <a href="#" class="name">
                                            <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 2:15</small>

                                           <g:if test="${topPost?.topic?.isExistResource(topPost?.id)}">
                                            <a href="${createLink(controller:"linkSharing",action:"showResource" ,params:[id:topPost?.id])}">${topPost?.topicname}</a>
                                            </a>
                                        </g:if>
                                        <g:else>
                                            <a href="#" onclick="alert('Topic is not Subscribed')">${topPost?.topicname}</a>
                                        </g:else>


                                        </a>
                                        <span class="row">
                                            <span class="text-info col-lg-5">
                                                ${topPost?.createdBy?.name}
                                            </span>
                                            <span class="text-info  col-lg-4">

                                                @${topPost.createdBy}
                                            </span>
                                            <span class="text-info col-lg-3">

                                                ${topPost.topicname}
                                            </span>
                                        </span>

                                    </p>
                                    <div class="attachment">

                                        <span>
                                            ${topPost.description}
                                        </span>

                                        <br>
                                        <br>
                                        <g:if test="${topPost instanceof com.intelligrape.linksharing.Link_Resource}">
                                            ${url=topPost?.url}
                                        </g:if>
                                        <g:else>
                                            <%url="http://linksharing.com/"%>
                                        </g:else>

                                         <a target="_blank" href="https://www.facebook.com/dialog/feed?app_id=1705044979707974
 &picture=http://www.seeamanaboutablog.co.uk/wp-content/uploads/2011/01/ShareThis-socilal-media-share-buttons.png
 &display=popup&caption= ${topPost.topicname}&link=${url}&description=${topPost.description}&redirect_uri=https://www.facebook.com/"> <img src="../dist/img/facebook.png"/>
                                         </a>


                                        <a href="https://plus.google.com/share?url=${url}" onclick="javascript:window.open(this.href,
                                                '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"><img
                                                src="../dist/img/google.png" alt="Share on Google+"/></a>
                                    &nbsp;&nbsp;
                                     <g:if test="${(topPost?.createdBy?.id==session.user.id) || session.user.admin}">
                                        <a href="#" onclick="deleteResource(${topPost.id})"><u>Delete</u></a>&nbsp;&nbsp;
                                     </g:if>
                                <g:if test="${(topPost?.createdBy?.id==session.user.id) || session.user.admin}">

                                    <a href='${createLink(controller:'resource',action:'show')}?id=${topPost?.id}'><u>Edit</u></a>
                                    &nbsp;&nbsp;
                                </g:if>

                                        <g:if test="${topPost?.url}">
                                            <a href="${topPost?.url}"><u>View Full Site</u></a>&nbsp;&nbsp;

                                        </g:if>
                                        <g:else>
                                            <u><a target='_blank' href='${createLink(controller:'document',action:'downloadDocument')}?id=${topPost?.id}'>Download</a></u>&nbsp;&nbsp;

                                        </g:else>
                                        <a href='${createLink(controller:'resource',action:'show')}?id=${topPost?.id}'><u>View Post</u></a>
                                    </div>
                                </div>
                            </g:each>
                        </div>
                    </div>



                </div>
                <!-- /.col -->
                <div class="col-md-6">

                <div class="box box-success">
                    <div class="box-header">
                        <i class="fa fa-comments-o"></i>

                        <h3 class="box-title">Posts:${topicDetails?.name}</h3>

                        <form class="dropdown-toggle pull-right" data-toggle="dropdown" role="search"
                              style="padding-left:30px">
                            <div class="input-group">
                                <input type="text" class="form-control" onkeyup="searchResourceAndTopic(this.value)"
                                       placeholder="Search" id="searchposts"/>

                                <div class="input-group-btn ">
                                    %{--<button class="btn btn-default" type="submit"><i--}%
                                    %{--class="glyphicon glyphicon-search"></i></button>--}%
                                </div>

                            </div>

                        </form>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="box-body chat" style="max-height:500px; overflow-y:scroll" id="chat-box" name="postsbox">

                                </div>
                            </li>
                        </ul>
                    </div> <!-- /.chat -->

                </div>


                <!-- /.col -->
            </div>
            <!-- /.row -->
</div>
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
<script type="text/javascript" src="/js/jquery-2.2.1.js"></script>


<script type="text/javascript">


    function resourceSeriousness(userid,topicid,seriouness) {
        <g:remoteFunction  controller="subscription" action="update"  params="\'userId=\'+ userid +\'&topicId=\'+topicid+ \'&seriousness=\'+seriouness" onSuccess="changeSeriouness(data,textStatus)"/>
    };

    function changeSeriouness(data, textStatus) {
        if (data) {
            if(data.message!="Seriousness is not updated")
                $("#spanmsg").addClass("alert alert-success")
            else
                $("#spanmsg").addClass("alert alert-danger")

            $("#spanmsg").text(data.message)

            $("#alertmsg").toggleClass('hidden');

            setTimeout(function(){$("#alertmsg").toggleClass('hidden');$("#spanmsg").removeClass("alert alert-success")}, 3000);
            //obj);
        }
    };
    function changeVisibility(userid,topicid,visibility)
    {
        <g:remoteFunction  controller="topic" action="updatevisibility"  params="\'userId=\'+ userid +\'&topicId=\'+topicid+ \'&visibility=\'+visibility" onSuccess="visibilityResponse(data,textStatus)"/>

    };
    function visibilityResponse(data, textStatus){
        if (data) {
            if(data.message!="Seriousness is not updated")
                $("#spanmsg").addClass("alert alert-success")
            else
                $("#spanmsg").addClass("alert alert-danger")

            $("#spanmsg").text(data.message)

            $("#alertmsg").toggleClass('hidden');

            setTimeout(function(){$("#alertmsg").toggleClass('hidden');$("#spanmsg").removeClass("alert alert-success")}, 3000);
            //obj);
        }

    };
</script>



<g:render template="../templates/resource/search"/>
<g:render template="../templates/message"/>
<g:render template="../templates/Topic/email"/>
<g:render template="../templates/LinkResource/create" model="[SubscribedTopicList:SubscribedTopicList]"/>
<g:render template="../templates/DocumentResource/create"/>
<g:render template="../templates/Topic/create"/>

<script type="text/javascript">

    var searchResourceAndTopic = function searchPost(description) {
        console.log(description);
        <g:remoteFunction  controller="resource" action="search"  params="\'description=\'+description" onSuccess="searchPostResponse(data,textStatus)"/>
    };

    var isEqualToJson = function (a, b) {
        function check(a, b) {
            for (var attr in a) {
                if (a.hasOwnProperty(attr) && b.hasOwnProperty(attr)) {
                    if (a[attr] != b[attr]) {
                        switch (a[attr].constructor) {
                            case Object:
                                return isEqualToJson(a[attr], b[attr]);
                            case Function:
                                if (a[attr].toString() != b[attr].toString()) {
                                    return false;
                                }
                                break;
                            default:
                                return false;
                        }
                    }
                } else {
                    return false;
                }
            }
            return true;
        };
        return check(a, b) && check(b, a);
    };

    function searchPostResponse(data, textStatus) {
        console.log("DATA >>> " + data)

        if (data) {

            var obj = eval(data.resources);
            var rtype = eval(data.resourceType);

            var readResources = eval(data.readResources);

            var subscriptionList = eval(data.subscriptionList);
            console.log("subscription list----item->" + data.subscriptionList[0]);
            console.log("subscription list----item-ss>" + subscriptionList.name);

            $('[name="postsbox"]').empty();
            if (data.resources == "") {
                $('[name="postsbox"]').append("<span class='alert alert-danger'>Record is not found</span>");

            }
            var flag;
            var markAsRead;
            var isSubscribed;
            $.each(obj, function (key, value) {
                markAsRead = "<u><a href='${createLink(controller: 'readingItem', action: 'changeIsRead')}?id=" + value.id + "&isRead=true'>Mark as Read</a></u>&nbsp;&nbsp;"
                $.each(readResources, function (key1, value1) {
                    console.log(">>>>>>>>>>" + value1);
                    if (isEqualToJson(value, value1)) {
                        markAsRead = "<u><a href='${createLink(controller: 'readingItem', action: 'changeIsRead')}?id=" + value.id + "&isRead=false'>Mark as Unread</a></u>&nbsp;&nbsp;"
                        return false;
                    }

                })
                if (value.url)
                    flag = "<a href=" + value.url + " target='_blank'><u>View Full Site</u></a>"
                else
                    flag = "<u><a target='_blank' href='${createLink(controller:'document',action:'downloadDocument')}?id=" + value.id + "'>Download</a></u>&nbsp;&nbsp;"


                $('[name="postsbox"]').append(
                        "<li>" +

                        "<div class='item' id='addhere'>" +
                        "<img alt='user image' class='online' src='${createLink(controller:'user',action:'renderFromDirectory')}?id=" + data.userId[key] + "' width=100 height=100 />" +

                        "<p class='message'>" +
                        "<a href='#' class='name'>" +
                        "<small class='text-muted pull-right'><i class='fa fa-clock-o'></i> 2:15" +
                        "</small>" +
                        "</a>" +

                        "</p>" +

                        "<div class='attachment'>" +

                        "<span class='text-justify'>" +
                        value.description +
                        "</span>" +
                        "<br>" +
                        "<a href='https://www.facebook.com/dialog/feed?app_id=1705044979707974"+
                        "&picture=http://www.seeamanaboutablog.co.uk/wp-content/uploads/2011/01/ShareThis-socilal-media-share-buttons.png"+
                        "&display=popup&caption="+value.description+"&link="+value.url+"&description="+value.description+"&redirect_uri=https://www.facebook.com/'>" +
                        "<img src='../dist/img/facebook.png'/>"+
                        "</a>"+
                   "<img src='../dist/img/twtr.png'/>" +

                        "<img src='../dist/img/google.png'/>" +

                        markAsRead +
                        "<u><a href='${createLink(controller:'resource',action:'show')}?id=" + value.id + "'>Edit</a></u>&nbsp;&nbsp;" +
                        flag + "&nbsp;&nbsp;" +

                        "<u><a href='${createLink(controller:'resource',action:'show')}?id=" + value.id + "'>View Post</a></u>&nbsp;&nbsp;" +

                        " </div>" +
                        "</div>" +
                        "<li>"
                )
            });

        }
        else {
            $('[name="postsbox"]').append("<span class='alert alert-danger'>Record is not fond</span>");

        }
    }
</script>
<script>



    function deleteTopic(id){
        <g:remoteFunction  controller="topic" action="delete"  params="\'id=\'+id " onSuccess="deleteTopicResponse(data,textStatus)"/>

    };

    function deleteTopicResponse(data, textStatus){
        if (data) {
            location.reload();
        }

    };

    function deleteResource(id){
        <g:remoteFunction  controller="resource" action="delete"  params="\'id=\'+id " onSuccess="deleteResourceResponse(data,textStatus)"/>

    };

    function deleteResourceResponse(data, textStatus){
        if (data) {
            location.reload();
        }

    };
    function subscribeTopic(id){
        <g:remoteFunction  controller="subscription" action="save"  params="\'id=\'+id " onSuccess="subscribeTopicResponse(data,textStatus)"/>

    };

    function subscribeTopicResponse(data, textStatus){
        if (data) {
            location.reload();
        }
    };
    function unSubscribeTopic(id){
        <g:remoteFunction  controller="subscription" action="delete"  params="\'id=\'+id " onSuccess="unSubscribeTopicResponse(data,textStatus)"/>

    };

    function unSubscribeTopicResponse(data, textStatus){
        if (data) {
            location.reload();
        }
    };


</script>
<script>
    var id;
    //    $(document).ready(function(){alert('ddd')});
    $('.update').on('click',function(){
        //updateTopicName_
        id=($(this).attr('id')).substr(16);
        $("#updateTopic"+id).show();


        $("#updateTopicForm"+id).submit(function(e)
        {

            var postData = $(this).serializeArray();
            var formURL = "${g.createLink(action:"update",controller:"topic" )}";
            $.ajax(
                    {
                        url : formURL,
                        type: "POST",
                        data : postData,
                        success:function(data, textStatus, jqXHR)
                        {
                            if(data.message!="Topic Name is already Exist") {
                                $("#spanmsg").addClass("alert alert-success")
                            }
                            else
                                $("#spanmsg").addClass("alert alert-danger")
                            $("#spanmsg").text(data.message)

                            $("#alertmsg").toggleClass('hidden');
                            $("#updateTopicForm"+id)[0].reset();
                            setTimeout(function(){$("#alertmsg").toggleClass('hidden');$("#spanmsg").removeClass("alert alert-success")}, 3000);
                            location.reload();
                        },
                        dataType: 'json',
                        error: function(jqXHR, textStatus, errorThrown)
                        {

                            $("#spanmsg").addClass("alert alert-danger")
                            $("#spanmsg").text(data.message);
                            $("#alertmsg").toggleClass('hidden');
                            $("#updateTopicForm"+id)[0].reset()
                            setTimeout(function(){$("#alertmsg").toggleClass('hidden');$("#spanmsg").removeClass("alert alert-success")}, 3000);

                        }

                    });
            e.preventDefault();	//STOP default action
        });






    });

</script>
</body>
</html>
