<%@ page import="java.nio.file.Files" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>LinkSharing| Admin</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.5 -->
  <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="../../plugins/datatables/dataTables.bootstrap.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">

  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  %{--<script src="${g.resource(dir:'js',file:'datatable.js') }"></script>--}%


  <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-2.2.1.js')}"></script>
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
              %{--<ls:userImage userId="${session?.user?.id}" imageType="user-image"/>--}%

              <span class="hidden-xs">${session.username}</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                %{--<img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">--}%
                %{--<ls:userImage userId="${session?.user?.id}" imageType="img-circle"/>--}%

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
          %{--<ls:userImage userId="${session?.user?.id}" imageType="img-circle" alt="user-Image"/>--}%
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
          <a href="${createLink(controller: 'linkSharing', action: 'admin')}">
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
        Data Tables
        <small>advanced tables</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>
   <section class="content">
      <div class="row">
        <div class="col-xs-12">

          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Users List</h3>
            </div>
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>User Name</th>
                  <th>Email-ID</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Admin</th>
                  <th>Active</th>
                </tr>
                </thead>
                <tbody>
                %{--<g:each in="${users}" var="user">--}%
                  %{--<tr>--}%
                    %{--<td>${user.id}</td>--}%
                    %{--<td>${user.username}</td>--}%
                    %{--<td>${user.email}</td>--}%
                    %{--<td>${user.firstname}</td>--}%
                    %{--<td>${user.lastname}</td>--}%
                    %{--<g:if test="${user.admin}">--}%
                    %{--<td>Yes</td>--}%
                    %{--</g:if>--}%
                    %{--<g:else>--}%
                      %{--<td>No</td>--}%
                    %{--</g:else>--}%
                         %{--<g:if test="${user.active}">--}%
                      %{--<td><a href="#" onclick="activateUser(${user.id})">Active</a></td>--}%
                    %{--</g:if>--}%
                    %{--<g:else>--}%
                      %{--<td><a href="#" onclick="deActivateUser(${user.id})">Deactive</a></td>--}%
                    %{--</g:else>--}%

                  %{--</tr>--}%
                %{--</g:each>--}%
                </tbody>
                <tfoot>
                <tr>
                  <th>User Name</th>
                  <th>Email-ID</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Admin</th>
                  <th>Active</th>
                </tr>

                </tfoot>
              </table>

            </div>
            <!-- /.box-header -->
            <!-- /.box-body -->
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
<script src="../../plugins/jQuery/jQuery-2.2.0.min.js"></script>


<script src="${resource(dir:'js',file:'jQuery-2.2.0.min.js')}"></script>

<!-- Bootstrap 3.3.5 -->
%{--<script src="../../bootstrap/js/bootstrap.min.js"></script>--}%
<!-- DataTables -->
<script src="../../plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../../plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="../../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../../plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
%{--<script src="../../dist/js/app.min.js"></script>--}%
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<g:render template="../templates/Topic/email"/>
<g:render template="../templates/DocumentResource/create"/>

%{--<g:render template="../templates/LinkResource/create"/>--}%
%{--<g:render template="../templates/Topic/create"/>--}%


<g:render template="../templates/resource/search"/>
<script>

  function activateUser(id){
    <g:remoteFunction  controller="user" action="activeUser"  params="\'id=\'+id+\'&activeness=\'+false" onSuccess="activateUserResponse(data,textStatus)"/>

  };

  function activateUserResponse(data, textStatus){
    if (data) {
      location.reload();
    }
  };
  function deActivateUser(id){
    <g:remoteFunction  controller="user" action="activeUser"  params="\'id=\'+id+\'&activeness=\'+true" onSuccess="activateUserResponse(data,textStatus)"/>

  };

  function deActivateUserResponse(data, textStatus){
    if (data) {
      location.reload();
    }
  };
</script>
<script>
  $(document).ready(function() {
    $('#example1').DataTable( {
//      "processing": true,
      "serverSide": true,
      "ajax": "${createLink(controller:"user",action:"show")}"/*,
      "data" :{query:data.search.value}*/
    } );
  } );
  </script>
</body>
</html>