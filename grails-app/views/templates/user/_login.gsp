<div id="pricingWrap">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h2 class="sectionTitle">Ready to get started?</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-8">

                <div class="panel panel-default" >
                    <div class="panel-heading" >Recent Shares</div>
                    <div class="panel-body">

     %{--<ls:recentshares></ls:recentshares>--}%

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

                                    <g:if test="${it[4]}">
                                        <span><a href="#">${it[4]}</a></span>
                                    </g:if>

                                    <div class="row">
                                        <div class="col-lg-9">
                                            <asset:image src="facebook.png"></asset:image>
                                            <asset:image src="twtr.png"></asset:image>
                                            <asset:image src="google.png"></asset:image>
                                        </div>
                                         <div class="col-lg-3">
                                            <g:if test="${it[0]}">
                                                <a href="${it[0]}"><u>View Post</u></a>
                                            </g:if>
                                            <g:else>
                                                <a href="${it[1]}"><u>Download</u></a>

                                            </g:else>





                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>
                        </g:each>
%{----}%


                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <ul class="priceTable">
                    <li class="title">Login</li>
                    <li class="description"><g:if test="${flash.message}">
                        <div class="alert alert-success">
                            <strong>Success!</strong>${flash.message}!.
                        </div>g
                    </g:if>
                        <g:if test="${flash.error}">
                            <div class="alert alert-danger">
                                <strong>Error!</strong>${flash.error}!.
                            </div>
                        </g:if></li>
                    <ul class="features">
                        <g:form controller="login"  action="loginHandler">
                            <li>
                                <div class="form-group has-success has-feedback">
                                    <label class="control-label" for="inputGroupSuccess1">Email<span style="color:red">*</span></label>
                                    <div class="input-group">
                                        <span class="input-group-addon">@</span>
                                        <g:field required="" type="email" name="email" placeholder="Please Enter Email" class="form-control" id="inputGroupSuccess1" aria-describedby="inputGroupSuccess1Status"/>
                                    </div>
                                    <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
                                    <span id="inputGroupSuccess1Status" class="sr-only">(success)</span>
                                    <span class="text-danger">
                                        <g:fieldError field="email" bean="${user}">

                                        </g:fieldError>
                                    </span>

                                </div></li>
                            </li>
                            <li>
                                <div class="form-group has-success has-feedback">
                                    <label class="control-label" for="inputGroupSuccess1">Password<span style="color:red">*</span></label>
                                    <div class="input-group">
                                        <span class="input-group-addon">*</span>
                                        <g:passwordField name="password" placeholder="Please Enter Password" type="text" class="form-control" id="inputGroupSuccess11" aria-describedby="inputGroupSuccess1Status"/>
                                    </div>
                                    <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
                                    <span id="inputGroupSuccess1Status1" class="sr-only">(success)</span>
                                    <span class="text-danger">
                                        <g:fieldError field="password" bean="${user}">

                                        </g:fieldError>
                                    </span>

                                </div></li>
                            </li>
                            <li>
                                <a href="#" data-target="#forgotPassword" data-toggle="modal">I forgot my password</a>
                            </li>
                            <li class="call">
                                <g:actionSubmit controller="login"  action="loginHandler" value="Login" class="btn btn-success btn-lg">Login</g:actionSubmit>
                            </li>
                        </g:form>

                        <li>

                            <a href="#productWrap" class="text-center">Register a new membership</a>
                        </li>
                    </ul>
                </ul>


            </div>
        </div>
    </div>
</div>
