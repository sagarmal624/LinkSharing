<div class="container" id="productWrap" >
    <div class="row">
        <div class="col-lg-8" style="padding-top: 25px">
            <div class="panel-group">
                <div class="panel panel-default"   style="border:1px solid gray">
                    <div class="panel-heading" style="border: 1px solid">
                        <div class="row">
                            <div class="col-lg-9">Top Posts
                            </div>
                            <div class="col-lg-2">
                                <div class="dropdown" data-placement="top" data-toggle="tooltipdropdown" title="Dropdown Will Have Today, 1 week , 1 month,1 year. " data-placement="right">
                                    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" >Today
                                        <span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Yesterday</a></li>
                                        <li><a href="#">1 Week</a></li>
                                        <li><a href="#">1 Month</a></li>
                                        <li><a href="#">1 year</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel-body">
                        <g:each in="${com.intelligrape.linksharing.Resource.getToppost()}">
                            <div class="row" style="border-bottom: 1px solid gray;padding-bottom: 10px">
                                <div class="col-lg-2">
                                    <span>
                                        <asset:image src="1.png"  style="border:1px solid"></asset:image>
                                    </span>
                                </div>
                                <div class="col-lg-10">
                                    <div class="row">
                                        <div class="col-lg-4">
                                            SagarMalShankhala
                                        </div>
                                        <div class="col-lg-3">@ ${session?.user } </div>
                                        <div class="col-lg-2"> 5min</div>
                                        <div class="col-lg-3">
                                            <span style="color:blue">${it[2]}</span>
                                        </div>
                                    </div>
                                    ${it[0]}
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
                        </g:each>

                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="login-box" style="border: 1px solid gray">
                <div class="login-box-body">
                    <div id="alertmsg" class="hidden"><span id="spanmsg"></span>
                    </div>

                    <p class="login-logo"><strong class="text-center"><h2>Sign Up</h2>
                    </strong></p>

                    <form id="registrationForm" name="registrationForm" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" value="${user?.firstname}" name="firstname" id="firstname" required="true" placeholder="FirstName"/>
                            <span class="text-danger">
                                <g:fieldError field="firstname" bean="${user}"></g:fieldError>
                            </span>
                        </div>
                        <div class="form-group">
                            <input type="text"  class="form-control" name="lastname" id="lastname" placeholder="LastName" value="${user?.lastname}"/>

                            <span class="text-danger">                 <g:fieldError field="lastname" bean="${user}"></g:fieldError>
                            </span>
                        </div>
                        <div class="form-group">

                            <input type="email" class="form-control" name="email" id="email" required="true" placeholder="Email"  value="${user?.email}"/>
                            <span class="text-danger">            <g:fieldError field="email" bean="${user}"></g:fieldError>
                            </span>
                        </div>

                        <div class="form-group">
                            <input type="text" class="form-control" name="username" id="username" required="true" placeholder="username"  value="${user?.username}"/>
                            <span class="text-danger"><g:fieldError field="username" bean="${user}"></g:fieldError>
                            </span>
                        </div>

                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Password" id="password" required="true" name="password"/>
                            <span class="text-danger"><g:fieldError field="password" bean="${user}">
                            </g:fieldError></span>
                        </div>
                        <div class="form-group">
                            <input type="password"  id="confirmPassword" name="confirmPassword" class="form-control" placeholder="Retype Password"  required="true"/>
                            <span class="text-danger"><g:fieldError field="confirmPassword" bean="${user}">

                            </g:fieldError></span>

                        </div>

                        <div class="form-group">
                            <input type="file" class="form-control" id="photo" name="photo"/>
                            <span class="text-danger">  <g:fieldError field="photo" bean="${user}"></g:fieldError>
                            </span>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-4 control-label" id="captchaOperation"></label>
                            <div class="col-lg-3">
                                <input type="text" class="form-control" name="captcha" />
                            </div>
                        </div>
                        <div class="row"><br><br>
                            %{--<div class="col-lg-8">						<fb:login-button scope="public_profile,email" onlogin="checkLoginState()" style="height: 50px"--}%
                            %{--size="large">Sign up using--}%
                            %{--Facebook</fb:login-button>--}%
                            %{--</div>--}%
                            <div id="loaderId" style="display: none">
                                <img src="${resource(dir:'images',file:'spinner.gif')}"/> Saving..
                            </div>
                            <div class="col-xs-4">
                                <input type="submit" id="save" class="btn btn-success btn-block btn-flat" name="Sign Up" value="Register"/>
                            </div>
                            <!-- /.col -->
                        </div>
                    </form>
                    <div id="status"></div>

                    <a href="#pricingWrap" class="text-center">I already have a membership</a>

                </div>
            </div>
        </div>
    </div>


    <script>

        function statusChangeCallback(response) {
            console.log('statusChangeCallback');
            console.log(response);
            if (response.status === 'connected') {
                testAPI();
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
                        document.getElementById("firstname").value=response.name.split(" ").slice(0, -1).join(' ');
                        document.getElementById("lastname").value=response.name.split(' ').slice(-1).join(' ');
                        document.getElementById('email').value = response.email;
                        document.getElementById("username").value=response.name.split(" ").slice(0, -1).join('');
                        FB.logout();
                    }
            );
        }
    </script>



    %{--<script src="../../plugins/jQuery/jQuery-2.2.0.min.js"></script>--}%
    <!-- Bootstrap 3.3.5 -->
</div>