<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>${session.username} | User Profile</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    %{--<!-- fullCalendar 2.2.5-->--}%
    <link rel="stylesheet" href="../../plugins/fullcalendar/fullcalendar.min.css">
    <link rel="stylesheet" href="../../plugins/fullcalendar/fullcalendar.print.css" media="print">
    <!-- Theme style -->
    <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
    %{--<!-- AdminLTE Skins. Choose a skin from the css/skins--}%
    %{--folder instead of downloading all of them to reduce the load. -->--}%
    <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">
    %{--<!-- iCheck -->--}%
    <link rel="stylesheet" href="../../plugins/iCheck/flat/blue.css">
    %{--<!-- bootstrap wysihtml5 - text editor -->--}%
    <link rel="stylesheet" href="../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>


    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js">
    </script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="${createLink(controller:"linkSharing",action:"mainpage")}" class="logo">
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
                <input id="searchtxt" type="text" onkeyup="topic(this.value)" name="searchtxt"
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
                        Design by Sagar
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
                        American Sawan Department
                        <small><i class="fa fa-clock-o"></i> Yesterday</small>
                      </h4>
                      <p>hello guys how are you?</p>
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
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">LINK SHARING</li>
        <li class="treeview">
          <a class="active" href="${createLink(controller:'linkSharing', action: 'dashboard')}">
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
        <li class="treeview active">
          <a href="#">
            <i class="fa fa-folder"></i> <span>User Profile</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="${createLink(controller:'linkSharing', action: 'profile')}"><i class="fa fa-circle-o"></i> Profile</a></li>
            <li><a href="lockscreen.gsp"><i class="fa fa-circle-o"></i> Lockscreen</a></li>
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
        User Profile
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">User Profile</a></li>
        <li class="active">User profile</li>
      </ol>
    </section>

    <section class="content">

      <div class="row">
        <div class="col-md-3">

          <!-- Profile Image -->
          <div class="box box-primary">
            <div class="box-body box-profile">
              %{--<img class="profile-user-img img-responsive img-circle" src="../../dist/img/user2-160x160.jpg" alt="User profile picture">--}%
              <ls:userImage userId="${session.user.id}" imageType="profile-user-img img-responsive img-circle"/>

              <h3 class="profile-username text-center">${session.username}</h3>

              <p class="text-muted text-center">Software Engineer Trainee</p>

              <ul class="list-group list-group-unbordered">
                <li class="list-group-item">
                  <b>Subscriptions</b> <a class="pull-right">${totalResourceAndSubscription.totalSubscription}</a>
                </li>
                <li class="list-group-item">
                  <b>Topics</b> <a class="pull-right">${totalResourceAndSubscription.totalTopic}</a>
                </li>
                
              </ul>
              <a href="#" class="btn btn-primary btn-block"><b>To The New Digital</b></a>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          <!-- About Me Box -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">About Me</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <strong><i class="fa fa-book margin-r-5"></i> Education</strong>

              <p class="text-muted">
                MCA  from the Birla Institute of Technology,Mesra
              </p>

              <hr>

              <strong><i class="fa fa-map-marker margin-r-5"></i> Location</strong>

              <p class="text-muted">Jaipur,Rajasthan </p>

              <hr>

              <strong><i class="fa fa-pencil margin-r-5"></i> Skills</strong>

              <p>
                <span class="label label-danger">HTML/CSS</span>
                <span class="label label-success">Bootstrap</span>
                <span class="label label-info">Javascript</span>
                <span class="label label-warning">Java</span>
                <span class="label label-primary">Groovy</span>
                <span class="label label-primary">Grails</span>
                  
              </p>

              <hr>

              <strong><i class="fa fa-file-text-o margin-r-5"></i> Notes</strong>

              <p>Life is like a game of chess. To win you have to make a move. Knowing which move to make comes with IN-SIGHT and knowledge, and by learning the lessons that are acculated along the way. .</p>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#activity" data-toggle="tab">Topics</a></li>
              <li><a href="#timeline" data-toggle="tab">Timeline</a></li>
              <li><a href="#settings" data-toggle="tab">Settings</a></li>
            </ul>
            <div class="tab-content">
              <div class="active tab-pane" id="activity">
              <g:each in="${userTopics}" var="topic">
                <div class="post">
                  <div class="user-block">
                    %{--<img class="img-circle img-bordered-sm" src="../../dist/img/user1-128x128.jpg" alt="user image">--}%
                    <ls:userImage userId="${session.user.id}" imageType="img-circle img-bordered-sm"/>
                 <div class="row">
                <form id="updateTopicForm">
                    <div class="form-group col-lg-4 col-lg-offset-2">
                  <input type="hidden" name="id" id="id" value="${topic.id}">
                      <input type="text" class="form-control" required="true" name="name" id="name" placeholder="Topic Name.... ">
                         </div>
                                    <div class="form-group col-lg-2">
                            <input type="submit" class="form-control btn btn-success  " value="Save" id="Save"/>
   </div>
                  <div id="alertmsg" class="hidden col-lg-offset-4"><span id="spanmsg"></span></div>

                </form>
                  </div>
                
                      
                      <span class="username">


                <a href="${createLink(controller:"linkSharing",action:"showResource" ,params:[id:topic?.id])}">${topic?.name}</a>

    </span>

                      <span class="description">Shared publicly -${topic.createdDate}</span>
                      <div class="row">
                        <span class="text-success col-lg-4">
                          @${topic?.createdBy}</span>

                        <span class="text-success col-lg-3">Subscriptions</span>
                          <span class="text-success col-lg-5">
                          Posts</span>
                      </div>
                    
                    <div class="row">
                           <span class="col-lg-3 col-lg-offset-4">
                          ${topic.countSubscription}</span>
                        
                        <span class="col-lg-5 text-info">
                          ${topic.countPost}</span>
                        </div>

                    </div>
                  <!-- /.user-block -->
                    <div class="row">
                     <div class="col-lg-3 form-group">
                       <select id="seriousnessID" class="form-control"
                               onchange="resourceSeriousness(${session.user.id},'${topic.id}',this.value)">

                       %{--onchange="resourceSeriousness(this.value)">--}%
                       %{--onchange="resourceSeriousness(this.value)">--}%
                       %{--params: '\'userId=\'+ '\"{topicDetails?.createdBy.id}\"' +\'&topicId=\'+ ${topicDetails?.id}+ \'&seriousness=\'+seriouness' )}">--}%
                         <g:if test="${topic?.seriousness.equals(Enums.Seriousness.VERY_SERIOUS.toString())}">

                           <option selected>${Enums.Seriousness.VERY_SERIOUS}</option>
                           <option>${Enums.Seriousness.SERIOUS}</option>
                           <option>${Enums.Seriousness.CASUAL}</option>
                         </g:if>
                         <g:elseif test="${topic?.seriousness.equals(Enums.Seriousness.SERIOUS.toString())}">

                           <option> ${Enums.Seriousness.VERY_SERIOUS}</option>
                           <option selected>${Enums.Seriousness.SERIOUS}</option>
                           <option>${Enums.Seriousness.CASUAL}</option>
                         </g:elseif>
                         <g:elseif test="${topic?.seriousness.equals(Enums.Seriousness.CASUAL.toString())}">

                           <option>${Enums.Seriousness.VERY_SERIOUS}</option>
                           <option>${Enums.Seriousness.SERIOUS}</option>
                           <option selected>${Enums.Seriousness.CASUAL}</option>
                         </g:elseif>

                       </select>
                        
                        </div>
                        <div class="col-lg-3 form-group">
                          <g:if test="${session.email}">

                            <select class="form-control"
                                    onchange="changeVisibility(${session.user.id},${topic.id},this.value)">
                              <g:if test="${topic?.visibility.equals(Enums.Visibility.PRIVATE.toString())}">

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
                    
                        
                         <div class="col-lg-3">



                           <a href="#" data-target="#sendInv" data-toggle="modal" class="dropdown-toggle"
                              data-toggle="dropdown">
                             <span class="glyphicon glyphicon-envelope"
                                   style="font-size:25px"></span>

                           </a>&nbsp;&nbsp;&nbsp;
                <g:if test="${(session.email==topic?.createdBy?.email)|| session.user.admin}">

                  <a href="" onclick="deleteTopic(${topic.id})">  <span class="glyphicon glyphicon-trash" style="font-size:25px"></span></a>
                </g:if>

                         </div>
                           
                        
                        
                    
                    </div>
                    
                    
                    
                
                   </div>
              </g:each>
                </div>
            <div class="tab-pane" id="timeline">
                <!-- The timeline -->
                <ul class="timeline timeline-inverse">
                  <!-- timeline time label -->
                  <li class="time-label">
                        <span class="bg-red">
                          10 Feb. 2014
                        </span>
                  </li>
                  <!-- /.timeline-label -->
                  <!-- timeline item -->
                  <li>
                    <i class="fa fa-envelope bg-blue"></i>

                    <div class="timeline-item">
                      <span class="time"><i class="fa fa-clock-o"></i> 12:05</span>

                      <h3 class="timeline-header"><a href="#">Support Team</a> sent you an email</h3>

                      <div class="timeline-body">
                       You can make customers reliant on you 24/7, or educate them to help them become more self-sufficient and successful. Learn how content can ...
 </div>
                      <div class="timeline-footer">
                        <a class="btn btn-primary btn-xs">Read more</a>
                        <a class="btn btn-danger btn-xs">Delete</a>
                      </div>
                    </div>
                  </li>
                  <!-- END timeline item -->
                  <!-- timeline item -->
                  <li>
                    <i class="fa fa-user bg-aqua"></i>

                    <div class="timeline-item">
                      <span class="time"><i class="fa fa-clock-o"></i> 5 mins ago</span>

                      <h3 class="timeline-header no-border"><a href="#">Rahul is</a> accepted your friend request
                      </h3>
                    </div>
                  </li>
                  <!-- END timeline item -->
                  <!-- timeline item -->
                  <li>
                    <i class="fa fa-comments bg-yellow"></i>

                    <div class="timeline-item">
                      <span class="time"><i class="fa fa-clock-o"></i> 27 mins ago</span>

                      <h3 class="timeline-header"><a href="#">Ankita</a> commented on your post</h3>

                      <div class="timeline-body">
                        Take me to your leader!
                        Jaipur is small and neutral!
                        We are more like Jodhpur, ambitious and misunderstood!
                      </div>
                      <div class="timeline-footer">
                        <a class="btn btn-warning btn-flat btn-xs">View comment</a>
                      </div>
                    </div>
                  </li>
                  <!-- END timeline item -->
                  <!-- timeline time label -->
                  <li class="time-label">
                        <span class="bg-green">
                         02 jan 2016
                        </span>
                  </li>
                  <!-- /.timeline-label -->
                  <!-- timeline item -->
                  <li>
                    <i class="fa fa-camera bg-purple"></i>

                    <div class="timeline-item">
                      <span class="time"><i class="fa fa-clock-o"></i> 2 days ago</span>

                      <h3 class="timeline-header"><a href="#">Rahul</a> uploaded new photos</h3>

                      <div class="timeline-body">
                        <img src="http://placehold.it/150x100" alt="..." class="margin">
                        <img src="http://placehold.it/150x100" alt="..." class="margin">
                        <img src="http://placehold.it/150x100" alt="..." class="margin">
                        <img src="http://placehold.it/150x100" alt="..." class="margin">
                      </div>
                    </div>
                  </li>
                  <!-- END timeline item -->
                  <li>
                    <i class="fa fa-clock-o bg-gray"></i>
                  </li>
                </ul>
              </div>
              <!-- /.tab-pane -->

              <div class="tab-pane" id="settings">
                <form class="form-horizontal">
                  <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">Name</label>

                    <div class="col-sm-10">
                      <input type="email" class="form-control" id="inputName" placeholder="Name">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">Email</label>

                    <div class="col-sm-10">
                      <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">Name</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputName" placeholder="Name">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputExperience" class="col-sm-2 control-label">Experience</label>

                    <div class="col-sm-10">
                      <textarea class="form-control" id="inputExperience" placeholder="Experience"></textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputSkills" class="col-sm-2 control-label">Skills</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputSkills" placeholder="Skills">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> I agree to the <a href="#">terms and conditions</a>
                        </label>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" class="btn btn-danger">Submit</button>
                    </div>
                  </div>
                </form>
              </div>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- /.nav-tabs-custom -->
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
      <b>Version</b> 1.0.1
    </div>
    <strong>Copyright &copy; 2016-2017 <a href="http://almsaeedstudio.com">ToTheNewDigital@</a>.</strong> All rights
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
                <h4 class="control-sidebar-subheading">Sagar's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript::;">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Vaibhav Updated His Profile</h4>

                <p>New phone +91 8826100625</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript::;">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Diwakar Joined Mailing List</h4>

                <p>sagar@example.com</p>
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
<g:render template="../templates/Topic/email"/>
<g:render template="../templates/LinkResource/create"/>
<g:render template="../templates/DocumentResource/create"/>
<g:render template="../templates/Topic/create"/>
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

      setTimeout(function(){$("#alertmsg").toggleClass('hidden');$("#spanmsg").removeClass("alert alert-success")}, 1000);
      //obj);
    }
  };
  function changeVisibility(userid,topicid,visibility)
  {
    <g:remoteFunction  controller="topic" action="updatevisibility"  params="\'userId=\'+ userid +\'&topicId=\'+topicid+ \'&visibility=\'+visibility" onSuccess="visibilityResponse(data,textStatus)"/>

  };
  function visibilityResponse(data, textStatus) {
    if (data) {
      if (data.message != "Seriousness is not updated")
        $("#spanmsg").addClass("alert alert-success")
      else
        $("#spanmsg").addClass("alert alert-danger")

      $("#spanmsg").text(data.message)

      $("#alertmsg").toggleClass('hidden');

      setTimeout(function () {
        $("#alertmsg").toggleClass('hidden');
        $("#spanmsg").removeClass("alert alert-success")
      }, 1000);
      //obj);
    }
  };
    function saveTopic(topicid,name)
    {
      <g:remoteFunction  controller="topic" action="update"  params="\'id=\'+ topicid +\'&name=\'+name" onSuccess="saveTopicResponse(data,textStatus)"/>

    };
    function saveTopicResponse(data, textStatus) {
      if (data) {
        if (data.message != "Topic Name is already Exist")
          $("#spanmsg").addClass("alert alert-success")
        else
          $("#spanmsg").addClass("alert alert-danger")

        $("#spanmsg").text(data.message)

        $("#alertmsg").toggleClass('hidden');

        setTimeout(function () {
          $("#alertmsg").toggleClass('hidden');
          $("#spanmsg").removeClass("alert alert-success")
        }, 1000);
        //obj);
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


</script>


<script type="text/javascript">
  $("#updateTopicForm").submit(function(e)
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
                $("#updateTopicForm")[0].reset();
                setTimeout(function(){$("#alertmsg").toggleClass('hidden');$("#spanmsg").removeClass("alert alert-success")}, 3000);
                 location.reload();
              },
              dataType: 'json',
              error: function(jqXHR, textStatus, errorThrown)
              {
                $("#spanmsg").addClass("alert alert-danger")
                $("#spanmsg").text(data.message);
                $("#alertmsg").toggleClass('hidden');
                $("#updateTopicForm")[0].reset()
                setTimeout(function(){$("#alertmsg").toggleClass('hidden');$("#spanmsg").removeClass("alert alert-success")}, 3000);

              }

            });
    e.preventDefault();	//STOP default action
  });
</script>

</body>
</html>
