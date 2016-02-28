<%@ page import="java.nio.file.Files" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>LinkSharing</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="footer, address, phone, icons" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet"  href=" ${resource(dir: 'css', file: 'footer-distributed-with-address-and-phones.css')}">

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

    <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <style>
    .carousel-inner > .item > img,
    .carousel-inner > .item > a > img {
        width: 100%;
        margin: auto;
        height:500px;
    }
    </style>
    <style type="text/css">
    <!--

    html,body{
        background-image: url( ${resource(dir: 'images', file: 'img.gif')});
    }

    </style>
</head>

<body>

<nav class="navbar navbar-default" role="navigation" style="background-color:#1ab7ea;">
    <div class="container-fluid">
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
            <g:if test="${session.username}">
                <li>
                    <div class="btn btn-info brn-group" >
                    <a href="${createLink(controller:"linkSharing",action:"dashboard")}" class="btn btn-info dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>${session?.username}<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="${createLink(controller:"linkSharing",action:"dashboard")}">Dashboard</a></li>
                            <li><a href="${createLink(controller:"login",action:"logout")}">Logout</a></li>
                        </ul>
                    </div>
                      </li>
            </g:if>
            <g:else>
            <li><a href="${createLink(controller:"user",action:"index")}"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            <li><a href="${createLink(controller:"login",action:"index")}"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
           </g:else>
        </ul>
    </div>
</nav>

<div class="container">

    <br>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">

                <img src=" ${resource(dir: 'images', file: '8.jpg')}" alt="Chania" width="1000" height="1920">
            </div>
            <div class="item">
                <img src=" ${resource(dir: 'images', file: '2.jpg')}" alt="Flower" width="1000" height="1000">
            </div>
            <div class="item">
                <img src="${resource(dir: 'images', file: '7.jpg')}" alt="Flower" width="1000" height="1000">
            </div>

        <div class="item">
            <img src="${resource(dir: 'images', file: '1.jpg')}" alt="Flower" width="1000" height="1000">
        </div>

            <div class="item">
                <img src=" ${resource(dir: 'images', file: '22.jpg')}" alt="Flower" width="1000" height="1000">
            </div>
        <div class="item">
            <img src=" ${resource(dir: 'images', file: '12.png')}" alt="Chania" width="1000" height="1000">
        </div>


    </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <br><br>
    <div class="well span6 row">


        <span class="text-success">
            LinkSharing-Online document Sharing provides an easy, reliable and secure way to share files and folders. It acts as a centralized repository, where you can upload and store all your documents and share them with multiple users in your organization working in different locations.

            With LinkSharing, sharing becomes simpler. It's user-friendly interface lets you keep a track of all the files you have shared with others and what others have shared with you. It provides various sharing options where you can either share files or folders to individuals or a group internally or to external partners, clients and customers.</span>

    </div>

</div>




    <footer class="footer-distributed">

        <div class="footer-left">
            <h3><span><img src="${resource(dir: 'images', file: 'xlogo-large.png.pagespeed.ic.mNf2OdVkJv.png')}"/> </span></h3>

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
                <p><span>127 Sector </span> Noida, Utrapradesh(India)</p>
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
                Make a link to files or folders in your LinkSharing and quickly share your photos, docs, presentations, and Link with friends and colleagues        </p>

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
