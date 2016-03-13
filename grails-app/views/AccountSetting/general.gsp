<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>LinkSharing| Edit User Information</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="../dist/css/star-rating.css" media="all" rel="stylesheet" type="text/css"/>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js">
  </script>
  <script src="../dist/js/star-rating.js" type="text/javascript"></script>
  <link rel="stylesheet" href="${resource(dir: 'bootstrap/css', file: 'bootstrap.min.css')}">
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css"/>
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> </script>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <a href="${createLink(controller:"linkSharing",action:"mainpage")}" class="logo">
      <span class="logo-mini"><b>Link</b>Sharing</span>
      <span class="logo-lg"><b>Link</b>Sharing</span>
    </a>
    <nav class="navbar navbar-static-top" role="navigation">
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
                <ul class="menu">
                  <li><!-- start message -->
                    <a href="#">
                      <div class="pull-left">
                        <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Support Team
                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                      </h4>
                      <p>KBC project is done</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="../../dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                       To The New Design Team
                        <small><i class="fa fa-clock-o"></i> 2 hours</small>
                      </h4>
                      <p>Software Developemet Task is done</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="../../dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Developers
                        <small><i class="fa fa-clock-o"></i> Today</small>
                      </h4>
                      <p>My Practive is grails</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="../../dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                      IT Department
                        <small><i class="fa fa-clock-o"></i> Yesterday</small>
                      </h4>
                      <p>Walking on water and developing software from a specification are easy if both are frozen.- Sagar mal Shankhala</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="../../dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Reviewers
                        <small><i class="fa fa-clock-o"></i> 2 days</small>
                      </h4>
                      <p>Walking on water and developing software from a specification are easy if both are frozen.-Sagar</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href=".${createLink(controller:'linkSharing', action: 'inbox')}">See All Messages</a></li>
            </ul>
          </li>
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
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
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
    <section class="sidebar">
      <div class="user-panel">
        <div class="pull-left image">
          %{--<img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">--}%
          <ls:userImage userId="${session?.user?.id}" imageType="img-circle"/>

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
      <ul class="sidebar-menu">
        <li class="header">LINKSHARING</li>
        <li class="treeview">
          <a href="${createLink(controller:'linkSharing', action: 'dashboard')}">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
           </li>
        <li>
          <a href="${createLink(controller:'linkSharing', action: 'trendingPost')}">
            <i class="fa fa-th"></i> <span>Trending Topics</span>
            <small class="label pull-right bg-green">new</small>
          </a>
        </li>
        <li class="treeview active">
          <a href="${createLink(controller:'linkSharing', action: 'accountSetting')}">
              <i class="fa fa-edit"></i>
              <span>Account Setting</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>

          </li>
        <li class="treeview">
          <a href="${createLink(controller: 'linkSharing', action: 'admin')}">
            <i class="fa fa-table"></i> <span>Admin</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            
            <li><a href="${createLink(controller:'linkSharing', action: 'admin')}"><i class="fa fa-circle-o"></i> Data tables</a></li>
          </ul>
        </li>
        <li>
          <a href="${createLink(controller:'linkSharing', action: 'calender')}">
            <i class="fa fa-calendar"></i> <span>Calendar</span>
            <small class="label pull-right bg-red">3</small>
          </a>
        </li>
        <li>
          <a href="${createLink(controller:'linkSharing', action: 'inbox')}">
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

            <li><a href="${createLink(controller:'linkSharing', action: 'profile')}"><i class="fa fa-circle-o"></i> Profile</a></li>
            <li><a href="${createLink(controller:'linkSharing', action: 'lockscreen')}"><i class="fa fa-circle-o"></i> Lockscreen</a></li>
          </ul>
        </li>
        </ul>
    </section>
  </aside>

  <div class="content-wrapper">
    <section class="content-header">
      <h1>
        General Account Setting
        
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Forms</a></li>
        <li class="active">General Setting</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <!-- left column -->
        <div class="col-md-6">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Change Password</h3>
              <g:if test="${flash.message1}">

                <span class="alert alert-success">${flash.message1}</span>
              </g:if>
              <g:if test="${flash.error1}">
                <span class="alert alert-danger">${flash.error1}</span>

              </g:if>
            </div>
            <g:form controller="user" action="updatePassword" role="form" name="updatePasswordForm" id="updatePasswordForm">
              <div class="box-body">
                <div class="form-group">
                  <label for="email">Email address</label>
                  <input type="email" class="form-control"  required="true" id="email" name="email"placeholder="Enter email">
                </div>
                <div class="form-group">
                  <label for="password">Password</label>
                  <input type="password" name="password"  required="true" class="form-control" id="password" placeholder="Password">
                </div>
                 <div class="form-group">
                  <label for="password">Confirm Password</label>
                  <input type="password" class="form-control"  required="true" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password">
                </div>
                 </div>
              <div class="box-footer">
                <button type="button" class="btn btn-danger col-lg-offset-2">Cancel</button>
                <button type="submit" class="btn btn-success col-lg-offset-2">Update</button>
              </div>
            </g:form>
          </div>
        </div>
          <div class="col-md-6">
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">User Profile</h3>
        <g:if test="${flash.message}">

          <span class="alert alert-success">${flash.message}</span>
        </g:if>
            <g:if test="${flash.error}">
              <span class="alert alert-danger">${flash.error}</span>

            </g:if>>

            </div>
            <g:form enctype="multipart/form-data" class="form-horizontal" controller="user" action="update" name="updateUserDetailForm" id="updateUserDetailForm">
              <div class="box-body">
                <div class="form-group">
                  <label for="firstname" class="col-sm-2 control-label">FirstName</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="firstname" id="firstname" placeholder="First Name">
                  </div>
                </div>
                  <div class="form-group">
                  <label for="lastname" class="col-sm-2 control-label">LastName</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Last Name">
                  </div>
                </div>
                  <div class="form-group">
                  <label for="photo" class="col-sm-2 control-label">Photo</label>
                  <input type="file" id="photo" name="photo">
                </div>
              </div>
        <div class="box-footer">

                <button type="Cancel" class="btn btn-danger col-lg-offset-2">Cancel</button>
          <div id="loaderId5" clas="col-lg-2" style="display: none" %{--class="loader pull-left hidden"--}%>
            <img src="${resource(dir:'images',file:'spinner.gif')}"/> Saving..
          </div>

          <g:actionSubmit controller="user" action="update" value="Update" id="userDetails" class="btn btn-success col-lg-offset-4">Update</g:actionSubmit>
              </div>
              <!-- /.box-footer -->
            </g:form>
          </div>
          
      </div>
        </div>
          </section>
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
                <h4 class="control-sidebar-subheading">sagar's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript::;">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">sagar Updated His Profile</h4>

                <p>New phone +91 9166338872</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript::;">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">sagarJoined Mailing List</h4>

                <p>sagar@example.com</p>
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
     

      </div>
  
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
<!-- ./wrapper -->

<!-- jQuery 2.2.0 -->
<script src="../../plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="../../bootstrap/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="../../plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->



<script src="../../dist/js/demo.js"></script>

<script>
  $('#updateUserDetailForm').bootstrapValidator({
    fields: {

      firstname: {
        message: 'This FirstName is not valid',
        validators: {

          regexp: {
            regexp: /^[a-zA-Z]+[\-'\s]?[a-zA-Z ]+$/,
            message: 'The Firstname can only consist of alphabetical'

          },
          notEmpty: {
            message: 'The First Name is required and can\'t be empty'
          },
          stringLength: {
            min: 3,
            message: 'The First name must be more than 3 characters long'
          }
        }

      },
      lastname: {
        message: 'This Last Name is not valid',
        validators: {

          regexp: {
            regexp: /^[a-zA-Z]+[\-'\s]?[a-zA-Z ]+$/,
            message: 'The Lastname can only consist of alphabetical'

          },
        }
      },
    }

    });





  $('#updatePasswordForm').bootstrapValidator({
    fields: {
      email: {
        validators: {
          notEmpty: {
            message: 'The email address is required and can\'t be empty'
          },
          regexp: {
            regexp: /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/,
            message: 'Email id is not Valid.Please try Again'

          }

        }
      },
      password: {
        validators: {
          notEmpty: {
            message: 'The password is required and can\'t be empty'
          },
          identical: {
            field: 'confirmPassword',
            message: 'The password and its confirm are not the same'
          },
          different: {
            field: 'username',
            message: 'The password can\'t be the same as username'
          }
        }
      },
      confirmPassword: {
        validators: {
          notEmpty: {
            message: 'The confirm password is required and can\'t be empty'
          },
          identical: {
            field: 'password',
            message: 'The password and its confirm are not the same'
          },
          different: {
            field: 'username',
            message: 'The password can\'t be the same as username'
          }
        }
      }

    }

  });






</script>
<script>


</script>

<g:render template="../templates/resource/search"/>
<g:render template="../templates/Topic/email"/>
<g:render template="../templates/LinkResource/create"/>
<g:render template="../templates/DocumentResource/create"/>
<g:render template="../templates/Topic/create"/>

</body>
</html>
