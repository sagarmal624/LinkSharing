<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>LinkSharing | Data Tables</title>
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
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">

  
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="../../index.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>LNK</b>SH</span>
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
          <!-- Messages: style can be found in dropdown.less-->
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
                        <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
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
                        <img src="../../dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
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
                        <img src="../../dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
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
                        <img src="../../dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                       IT Department
                        <small><i class="fa fa-clock-o"></i> Yesterday</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
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
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">See All Messages</a></li>
            </ul>
          </li>
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-comment"></i>
              <span class="label label-warning"></span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">Create Topic</li>
              <li>
                <ul class="menu">
                  <li>
                    <form>
                      <ul class="menu">

                        <li><!-- Task item -->
                          <div class="form-group">
                            <input type="text" class="form-control" placeholder="Enter Topic Name......">
                          </div>
                        </li>

                        <li>
                          <div class="form-group">
                            <select class="dropdown form-control">

                              <option>Select Visibility</option>
                              <option>Private</option>
                              <option>Public</option>
                            </select>
                          </div>

                        </li>
                        <li><!-- Task item -->
                          <div class="form-group">
                            <div class="form-group">
                              <button class="btn btn-danger col-lg-offset-1">Cancel</button>
                              <button class="btn btn-info col-lg-offset-3">Create</button>
                            </div>
                          </div>
                        </li>
                      </ul></form>
                  </li>
                </ul>
              </li>
            </ul>
          </li>
          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-link"></i>
              <span class="label label-warning"></span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">Share Link</li>
              <li>
                <ul class="menu">
                  <li>
                    <form>
                      <ul class="menu">

                        <li><!-- Task item -->
                          <div class="form-group">
                            <input type="url" class="form-control" placeholder="URL....">
                          </div>
                        </li>
                        <li><!-- Task item -->
                          <div class="form-group">
                            <textarea class="form-control" placeholder="Write Descriptions here....." rows="2" cols="20"></textarea>
                          </div>
                        </li>


                        <li>
                          <div class="form-group">
                            <select class="dropdown form-control">

                              <option>Select Topic</option>
                              <option>Grails</option>
                              <option>Java</option>
                            </select>
                          </div>

                        </li>
                        <li><!-- Task item -->
                          <div class="form-group">
                            <div class="form-group">
                              <button class="btn btn-danger col-lg-offset-1">Cancel</button>
                              <button class="btn btn-info col-lg-offset-3">Share</button>
                            </div>
                          </div>
                        </li>
                      </ul></form>



                  </li>
                </ul>
              </li>
            </ul>
          </li>

          <li class="dropdown tasks-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-send-o"></i>
              <span class="label label-success"></span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">Send Invitation</li>
              <li>
                <form>
                  <ul class="menu">

                    <li><!-- Task item -->
                      <div class="form-group">
                        <input type="email" class="form-control" placeholder="Email-Id">
                      </div>
                    </li>
                    <li>
                      <div class="form-group">
                        <select class="dropdown form-control">

                          <option>Select Topic</option>
                          <option>Grails</option>
                          <option>Java</option>
                        </select>
                      </div>

                    </li>
                    <li><!-- Task item -->
                      <div class="form-group">
                        <div class="form-group">
                          <button class="btn btn-danger col-lg-offset-1">Cancel</button>
                          <button class="btn btn-info col-lg-offset-3">Send</button>
                        </div>
                      </div>
                    </li>
                  </ul></form>
              </li>

            </ul>
          </li>
           <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="../../dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">Sagar Mal Shankhala</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
                 Sagar Mal Shankhala - Web Developer Trainee
                  <small>@To The New Digital</small>
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
                  <a href="${createLink(controller:"linkSharing",action:"profile")}" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="${createLink(controller:"login",action:"index")}" class="btn btn-default btn-flat">Sign out</a>
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
          <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Sagar Mal Shankhala</p>
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
        <li class="header">LINK SHARING</li>
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
        <li class="treeview">
          <a href="${createLink(controller:'linkSharing', action: 'accountSetting')}">
            <i class="fa fa-edit"></i> <span>Account Setting</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
         </li>
        <li class="treeview active">
          <a href="#">
            <i class="fa fa-table"></i> <span>Admin</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            
            <li class="active"><a href="${createLink(controller:'linkSharing', action: 'admin')}"><i class="fa fa-circle-o"></i> Data tables</a></li>
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
            <small class="label pull-right bg-yellow">12</small>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-folder"></i> <span>User Profile</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="${createLink(controller:'linkSharing', action: 'profile')}"><i class="fa fa-circle-o"></i> Profile</a></li>
            <li><a href="${createLink(controller:'linkSharing', action: 'lockscreen')}"><i class="fa fa-circle-o"></i> Lockscreen</a></li>
           </ul>
        </li>
        <li class="header">LABELS</li>
        <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Users for Admin
        <small>link Sharing</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Users List</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Serial-No</th>
                  <th>User Name</th>
                  <th>Email-ID</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Admin</th>
                  <th>Manage</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td>1</td>
                  <td>Ankita
                  </td>
                  <td>ankita624@gmail.com</td>
                  <td>Ankita</td>
                  <td></td>
                  <td>yes</td>
                  <td>active</td>
                    
                </tr>
                <tr>
                  <td>2</td>
                  <td>Pooja
                  </td>
                  <td>pooja624@gmail.com</td>
                  <td>pooja</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>3</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>4</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>5</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>6</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>7</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>8</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>9</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>10</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>11</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>12</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>13</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>14</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>15</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>16</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>17</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>18</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>19</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>20</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>21</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>22</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                <tr>
                  <td>23</td>
                  <td>Sagar Mal
                  </td>
                  <td>sagarmal624@gmail.com</td>
                  <td>sagarmal</td>
                  <td>shankhala</td>
                  <td>yes</td>
                  <td>active</td>
                </tr>
                </tbody>
                <tfoot>
                <tr>
                  <th>Serial-No</th>
                  <th>User Name</th>
                  <th>Email-ID</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Admin</th>
                  <th>Manage</th>
                    </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
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
                <h4 class="control-sidebar-subheading">Sagar Updated His Profile</h4>

                <p>New phone +91 9166338872</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript::;">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Sagar Joined Mailing List</h4>

                <p>sagarmal@tothenew.com</p>
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
<!-- ./wrapper -->

<!-- jQuery 2.2.0 -->
<script src="../../plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="../../bootstrap/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="../../plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../../plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="../../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../../plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<!-- page script -->
<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
  });
</script>
</body>
</html>
