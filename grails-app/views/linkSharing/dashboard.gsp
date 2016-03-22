<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>LinkSharing | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.5 -->
  <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
   <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="../../plugins/iCheck/flat/blue.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="../../plugins/morris/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="../../plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="../../plugins/datepicker/datepicker3.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../../plugins/daterangepicker/daterangepicker-bs3.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <a href="${createLink(controller: "linkSharing", action: "dashboard")}" class="logo">
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

                      <p>Java Develoepr</p>
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
              %{--<img src="../../dist/img/user2-160x160.jpg" class="user-image" alt="User Image">--}%
              <ls:userImage userId="${session?.user?.id}" imageType="user-image"/>

              <span class="hidden-xs">${session.username}</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                %{--<img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">--}%
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
          <ls:userImage userId="${session?.user?.id}" imageType="img-circle" alt="user-Image"/>
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
          <a href="${createLink(controller: 'linkSharing', action: 'calender')}">
            <i class="fa fa-calendar"></i> <span>Calendar</span>
            <small class="label pull-right bg-red">3</small>
          </a>
        </li>
        <li>
          <a href="${createLink(controller: 'linkSharing', action: 'inbox')}">
            <a href="${createLink(controller: 'linkSharing', action: 'inbox')}">
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
              <h3>${totalSubscription}</h3>

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
              <h3>${totalTopic}</h3>

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
              <h3>${totalPost}</h3>
              <h1>
                <a href=""><p>Total Post</p>
                </a>
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
              <g:if test="${flash.error}">
                <span class="alert alert-danger">${flash.error}</span>
              </g:if>

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

            <div class="box-body chat" id="chat-box" style="max-height:500px; overflow-y:scroll">
              <g:each in="${subscriptions}" var="topicVo">
                <div class="item">
                  <div id="alertmsg" class="hidden col-lg-offset-4"><span id="spanmsg"></span></div>


                  <ls:userImage userId="${topicVo?.createdBy?.id}" imageType="online"/>

                  <p class="message">
                  <a href="#" class="name">
                    <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 2:15</small>
                    %{--<a href="${createLink(controller:"linkSharing",action:"showResource")}?id="+topicVo?.id+">--}%
                    %{--<g:link controller="linkSharing" action="showResource" id="${topicVo?.id}" >${topicVo.name}</g:link>--}%
                    %{--${topicVo?.createdBy?.isSubscribed(topicVo?.id)}--}%

                    <g:if test="${topicVo?.topic?.isExistResource(topicVo?.id)}">
                      <a href="${createLink(controller:"linkSharing",action:"showResource" ,params:[id:topicVo?.id])}">${topicVo?.name}</a>
                      </a>
                    </g:if>
                    <g:else>
                      <a href="#" onclick="alert('Topic is not Subscribed')">${topicVo?.name}</a>
                    </g:else>
                    <span class="row">
                      <span class="text-info col-lg-4">
                        @ ${topicVo.createdBy}
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
                        <g:if test="${session.email!=topicVo?.createdBy?.email}">

                          <g:if test="${session.user?.isSubscribed(topicVo?.id)}">
                            <button class="btn btn-link" onclick="unSubscribeTopic(${topicVo?.id})">UnSubscribe </button>

                          </g:if>
                          <g:else>
                            <button class="btn btn-link" onclick="subscribeTopic(${topicVo?.id})">Subscribe </button>

                          </g:else>
                        %{--<ls:showSubscribe topicId="${topicVo?.id}"></ls:showSubscribe>--}%


                        </g:if>
                      </span>
                      <span class="col-lg-4">
                        <span class="badge" style="color:aqua">
                          ${topicVo.countSubscription}</span>
                      </span>
                      <span class="col-lg-4">
                        <span class="badge" style="color:aqua">
                          ${topicVo.countPost}</span>
                      </span>

                    </div>
                    <br>
                    <div class="row" id="updateTopic${topicVo?.id}" style="display: none">
                      <form id="updateTopicForm${topicVo?.id}">
                        <div class="col-lg-6">
                          <input type="hidden" name="id" value="${topicVo?.id}">
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

                          <select id="seriousnessID" class="form-control"
                                  onchange="resourceSeriousness(${topicVo.createdBy.id},'${topicVo.id}',this.value)">

                          %{--onchange="resourceSeriousness(this.value)">--}%
                          %{--onchange="resourceSeriousness(this.value)">--}%
                          %{--params: '\'userId=\'+ '\"{topicDetails?.createdBy.id}\"' +\'&topicId=\'+ ${topicDetails?.id}+ \'&seriousness=\'+seriouness' )}">--}%
                            <g:if test="${topicVo?.seriousness.equals(Enums.Seriousness.VERY_SERIOUS.toString())}">

                              <option selected>${Enums.Seriousness.VERY_SERIOUS}</option>
                              <option>${Enums.Seriousness.SERIOUS}</option>
                              <option>${Enums.Seriousness.CASUAL}</option>
                            </g:if>
                            <g:elseif test="${topicVo?.seriousness.equals(Enums.Seriousness.SERIOUS.toString())}">

                              <option> ${Enums.Seriousness.VERY_SERIOUS}</option>
                              <option selected>${Enums.Seriousness.SERIOUS}</option>
                              <option>${Enums.Seriousness.CASUAL}</option>
                            </g:elseif>
                            <g:elseif test="${topicVo?.seriousness.equals(Enums.Seriousness.CASUAL.toString())}">

                              <option>${Enums.Seriousness.VERY_SERIOUS}</option>
                              <option>${Enums.Seriousness.SERIOUS}</option>
                              <option selected>${Enums.Seriousness.CASUAL}</option>
                            </g:elseif>

                          </select>
                        </div>
                      </div>

                      <div class="col-lg-4">
                        <div class="form-group">
                          <g:if test="${session.email==topicVo?.createdBy?.email}">

                            <select class="form-control"
                                    onchange="changeVisibility(${topicVo.createdBy.id},'${topicVo.id}',this.value)">
                              <g:if test="${topicVo?.visibility.equals(Enums.Visibility.PRIVATE.toString())}">

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

                          <g:if test="${(session.email==topicVo?.createdBy?.email)|| session.user.admin}">
                            <a href="#"  class="update" id="updateTopicName_${topicVo?.id}"><span class="glyphicon glyphicon-file" style="font-size:25px"></span>
                            </a>

                          </g:if>

                        </div>
                        <div class="col-lg-4">
                          <g:if test="${(session.email==topicVo?.createdBy?.email) || session.user.admin}">
                          %{--<ls:deleteTopic topicId="${topicVo.id}"></ls:deleteTopic>--}%
                            <a href="" onclick="deleteTopic(${topicVo.id})">
                              <span class="glyphicon glyphicon-trash" style="font-size:25px"></span>
                            </a>
                          </g:if>
                        </div>
                      </div>

                    </div>

                  </div>
                  <!-- /.attachment -->
                </div>
                <!-- /.item -->
              </g:each>
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
              <g:form method="post"  action="sendMail" controller="user">
                <div class="box-body">

                  <div class="form-group">
                    <g:field type="email" required="" class="form-control" name="emailto" placeholder="Email to:"/>
                  </div>
                  <div class="form-group">
                    <g:field type="text" class="form-control"required="" name="subject" placeholder="Subject"/>
                  </div>
                  <div>
                    <g:textArea name="message" required="" class="textarea" placeholder="Message" style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></g:textArea>
                  </div>

                </div>
                <div class="box-footer clearfix">
                  <g:actionSubmit controller="user" action="sendMail"  value="Send" class="pull-right btn btn-default" id="sendEmail">Send
                    <i class="fa fa-arrow-circle-right"></i></g:actionSubmit>
                </div>
              </g:form>
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
<!-- ./wrapper -->

<!-- jQuery 2.2.0 -->
<script src="../../plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.5 -->
<script src="../../bootstrap/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="../../plugins/morris/morris.min.js"></script>
<!-- Sparkline -->
<script src="../../plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="../../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="../../plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>
<script src="../../plugins/daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="../../plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="../../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../../plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/app.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../../dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
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
    }

  };
  function deleteTopic(id){
    <g:remoteFunction  controller="topic" action="delete"  params="\'id=\'+id " onSuccess="deleteTopicResponse(data,textStatus)"/>

  };

  function deleteTopicResponse(data, textStatus){
    if (data) {
      location.reload();
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
