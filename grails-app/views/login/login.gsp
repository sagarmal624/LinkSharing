<%@ page import="com.intelligrape.linksharing.Resource; com.intelligrape.linksharing.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <title>LinkSharing</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="footer, address, phone, icons"/>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="google-signin-client_id"
          content="207048416405-n2q6q83fl9lcviphsc6v4sfp7asf7d2q.apps.googleusercontent.com">
    <link rel="stylesheet" href="${resource(dir: 'bootstrap/css', file: 'bootstrap.min.css')}
    ">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href=" ${resource(dir: 'dist/css', file: 'AdminLTE.min.css')}">
    <link rel="stylesheet" href="${resource(dir: 'plugins/iCheck/square', file: 'blue.css')}">

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href=" ${resource(dir: 'css', file: 'footer-distributed-with-address-and-phones.css')}">

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

    <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <style>
    .carousel-inner > .item > img,
    .carousel-inner > .item > a > img {
        width: 100%;
        margin: auto;
    }
    </style>
    <style type="text/css">

    html, body {
        background-image: url(${resource(dir: 'images', file: 'img.gif')});
    }
    </style>
</head>
<body>
<nav class="navbar navbar-default" role="navigation" style="background-color:#1ab7ea;"><div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="${createLink(controller:"login",action:"index")}">Link Sharing</a>
    </div>
    <ul class="nav navbar-nav">
        <li><a href="../main/main.gsp">Home</a></li>
        <li><a href="../main/services.gsp">Document</a></li>

        <li><a href="../main/services.gsp">Link</a></li>
        <li><a href="../main/main.gsp">About us</a></li>
        <li><a href="../contactus/contactus.gsp">Contact us</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
        <li><a href="${createLink(controller:"user",action:"register")}"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="${createLink(controller:"login",action:"index")}"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
    </ul>
</div>
</nav>
<div class="container" style="margin-top:-100px">

      <div class="col-lg-8 " style="padding-top:80px ">
              <div class="panel panel-default"   style="border:1px solid gray">
                  <div class="panel-heading" style="background-color:#1ab7ea;border: 1px solid">Recent Shares</div>
                  <div class="panel-body"">
                      <g:each in="${com.intelligrape.linksharing.Resource.getRecentResources()}">
                          <div class="row" style="border-bottom: 1px solid gray;padding-bottom:10px ">
                              <div class="col-lg-2 col-md-2 col-sm-2">
                                  <span>
                                      <asset:image src="1.png"  style="border:1px solid"></asset:image>
                                  </span>
                              </div>
                              <div class="col-lg-10 col-md-10 col-sm-10">
                                  <div class="row">
                                      <div class="col-lg-4">
                                          ${com.intelligrape.linksharing.User.findByUsername(it[3]).name}
                                      </div>
                                      <div class="col-lg-3">@ ${it[3]}</div>
                                      <div class="col-lg-2"> 5min</div>
                                      <div class="col-lg-3">
                                          <span style="color:blue">${it[2]}</span>
                                      </div>
                                  </div>
                                  <g:if test="${it[0]}">
                                      <span><a href="${it[0]}">${it[0]}</a></span>
                                  </g:if>
                                  <g:else>
                                      <span><a href="${it[1]}">${it[1]}</a></span>
                                  </g:else>

                                  <div class="row">
                                      <div class="col-lg-9">
                                          <asset:image src="facebook.png"></asset:image>
                                          <asset:image src="twtr.png"></asset:image>
                                          <asset:image src="google.png"></asset:image>
                                      </div>
                                      <div class="col-lg-3">
                                          <a href="#"><u>View Post</u></a>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <br>
                      </g:each>
                  </div>
              </div>
      </div>
      <div class="col-lg-4">
      <div class="login-box" style="border: 1px solid gray">
        <g:if test="${flash.message}">
            <div class="alert alert-success">
                <strong>Success!</strong>${flash.message}!.
            </div>
        </g:if>
        <g:if test="${flash.error}">
            <div class="alert alert-danger">
                <strong>Error!</strong>${flash.error}!.
            </div>
        </g:if>

        <div class="login-box-body">
            <p class="login-box-msg"><strong>Sign In</strong></p>

            <g:form >
                <div class="form-group has-feedback">
                    <g:field type="email" class="form-control" required="true" name="email" id="email" placeholder="Email" value=""/>
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                   <span class="text-danger"> <g:fieldError field="email" bean="${user}"></g:fieldError>
                  </span>
                </div>
                <div class="form-group has-feedback">
                    <g:passwordField  name="password" required="true" class="form-control" placeholder="Password" id="password" value=""/>
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    <span class="text-danger">  <g:fieldError field="email" bean="${user}"></g:fieldError>
</span>
                </div>
                <div class="row">
                    <div class="col-xs-8">
                        <div class="checkbox icheck">
                            <label>
                                <g:checkBox name="checkbox"/> Remember Me
                            </label>
                        </div>
                    </div>
                    <div class="col-xs-4">
                        <g:actionSubmit  controller="login"  action="loginHandler" name="Sign In" value="Sign In" class="btn btn-primary btn-block btn-flat"/>
                    </div>
                </div>
            </g:form>
            <div id="status">
            </div>
            <div class="social-auth-links text-center">
                <p>- OR -</p>
                <fb:login-button scope="public_profile,email" onlogin="checkLoginState()" style="height: 50px"
                                 size="large">Sign in using
        Facebook</fb:login-button>
                <p>- OR -</p>

                <div id="my-signin2" style="padding-left:72px">Sign in using
                Google+</div>

                <script>
                    function onSuccess(googleUser) {
                        window.location="http://localhost:8080/linkSharing/dashboard"
                       // document.getElementById("email").value =googleUser.getBasicProfile().getEmail();
                    }
                    function onFailure(error) {
                        console.log(error);
                    }
                    function renderButton() {
                        gapi.signin2.render('my-signin2', {
                            'scope': 'profile email',
                            'width': 180,
                            'height': 27,
                            'longtitle': true,
                            'theme': 'dark',

                            'onsuccess': onSuccess,
                            'onfailure': onFailure
                        });
                    }
                </script>
                <script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>

            </div>
            <!-- /.social-auth-links -->

            <a href="#">I forgot my password</a><br>
            <a href="${createLink(controller:"user",action:"index" )}" class="text-center">Register a new membership</a>

        </div>
        <!-- /.login-box-body -->
    </div>
 </div>
</div>
    <script>
        function statusChangeCallback(response) {
            console.log('statusChangeCallback');
            console.log(response);
            if (response.status === 'connected') {
                testAPI();
            } else if (response.status === 'not_authorized') {
                document.getElementById('status').innerHTML = 'Please log ' +
                        'into this app.';
            } else {
                document.getElementById('status').innerHTML = 'Please log ' +
                        'into Facebook.';
            }
        }
        function checkLoginState() {
            FB.getLoginStatus(function (response) {
                statusChangeCallback(response);
            });
        }

        window.fbAsyncInit = function () {
            FB.init({
                appId: '1705044979707974',
                cookie: true,  // enable cookies to allow the server to access
                               // the session
                xfbml: true,  // parse social plugins on this page
                version: 'v2.5' // use graph api version 2.5
            });


            FB.getLoginStatus(function (response) {
                statusChangeCallback(response);
            });
        };
        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s);
            js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));

        // Here we run a very simple test of the Graph API after login is
        // successful.  See st  atusChangeCallback() for when this call is made.
        function testAPI() {
            console.log('Welcome!  Fetching your information.... ');
            FB.api('/me', {fields: 'name, email'}, function (response) {
                  window.location="http://localhost:8080/linkSharing/dashboard"
                FB.logout();

                // document.getElementById('email').value = response.email;
                //document.getElementById('password').value = "default";
            });
        }
    </script>
    <script src="../../plugins/jQuery/jQuery-2.2.0.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="../../plugins/iCheck/icheck.min.js"></script>
    <script>
        $(function () {
            $('input').iCheck({
                checkboxClass: 'icheckbox_square-blue',
                radioClass: 'iradio_square-blue',
                increaseArea: '20%' // optional
            });
        });
    </script>



    <footer class="footer-distributed">

        <div class="footer-left">
            <h3><span><img src=" ${resource(dir: 'images/', file: 'xlogo-large.png.pagespeed.ic.mNf2OdVkJv.png')}"/></span></h3>

            <p class="footer-links">
                <a href="#">Home</a>
                ·
                <a href="#">Blog</a>
                ·
                <a href="#">Pricing</a>
                ·
                <a href="#">About</a>
                ·
                <a href="#">Faq</a>
                ·
                <a href="#">Contact</a>
            </p>

            <p class="footer-company-name">ToTheNewDigital &copy; 2016</p>
        </div>

        <div class="footer-center">

            <div>
                <i class="fa fa-map-marker"></i>

                <p><span>127 Sector</span> Noida, Utrapradesh(India)</p>
            </div>

            <div>
                <i class="fa fa-phone"></i>

                <p>+91 8826100625</p>
            </div>

            <div>
                <i class="fa fa-envelope"></i>

                <p><a href="mailto:support@company.com">support@ToTheNew.com</a></p>
            </div>

        </div>

        <div class="footer-right">

            <p class="footer-company-about">
                <span>About the company</span>
                Make a link to files or folders in your LinkSharing and quickly share your photos, docs, presentations, and Link with friends and colleagues
            </p>

            <div class="footer-icons">

                <a href="https://www.facebook.com/sagarmal.shankhala"><i class="fa fa-facebook"></i></a>
                <a href="https://twitter.com/login"><i class="fa fa-twitter"></i></a>
                <a href="https://www.linkedin.com/uas/login"><i class="fa fa-linkedin"></i></a>
                <a href="https://github.com/"><i class="fa fa-github"></i></a>

            </div>

        </div>

    </footer>



</body>
</html>
