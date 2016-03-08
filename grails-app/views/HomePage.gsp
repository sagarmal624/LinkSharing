<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
	<meta name="description" content="A Bootstrap based app landing page template">
	%{--<meta name="layout" content="main">--}%
	<link rel="shortcut icon" href="${assetPath(src:'favicon.ico')}">

	<title>LinkSharing - Document And Link Sharing</title>
	<link href="${resource(dir:'bootstrap/css',file:'bootstrap.min.css')}" rel="stylesheet">
	<link href="${assetPath(src:'custom.css')}" rel="stylesheet">
	<link href="${assetPath(src:'flexslider.css')}" rel="stylesheet">
	<link href="${resource(dir:'css',file:'footer-distributed-with-address-and-phones.css')}" rel="stylesheet">

	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Noto+Sans:400,700' rel='stylesheet' type='text/css'>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css"/>
	<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> </script>

</head>

<body>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#topWrap">
				<span class="fa-stack fa-lg">
					<i class="fa fa-circle fa-stack-2x"></i>
					<i class="fa fa-mobile fa-stack-1x fa-inverse"></i>
				</span>
				Link<span class="title">Sharing</span>
			</a>
		</div>
		<div class="collapse navbar-collapse appiNav">
			<ul class="nav navbar-nav">
				<li><a href="#featureWrap">Features</a></li>

				<li><a href="#pricingWrap">Recent Share</a></li>
				<li><a href="#productWrap">Top Post</a></li>

				<li><a href="#testimonialsWrap">Testimonials</a></li>

				<li><a href="#productWrap">SignUp</a></li>
				<li><a href="#pricingWrap">Login</a></li>

				<li><a href="#contactWrap">Contact Us</a></li>
			</ul>
		</div><!--/.nav-collapse -->
	</div>
</div>

<div id="topWrap" class="jumbotron">
	<div class="container">
		<div class="col-md-6 col-md-push-6 jumboText">
			<h1>Document And Link Sharing</h1>
			<h2>Knowledage Sharing Website.</h2>
			<a class="btn btn-lg btn-success actionBtn" href="#"><i class="fa fa-mobile fa-4x pull-left"></i><span class="line1">Available on the</span><br/><span class="line2">App Store</span></a>
		</div>
		<div class="col-md-6 col-md-pull-6 hidden-xs">
			<div class="mobile">
				<div class="mobileSlider">
					<ul class="slides">

						<li>
							%{--<img src="${resource(dir: 'assets/img', file: 'screen3.png')}"/>--}%

							<asset:image src="screen3.png"/>
						</li>

						<li>
							%{--<img src="${resource(dir: 'assets/img', file: 'screen1.png')}"/>--}%
							<asset:image src="screen1.png"/>

						</li>
						<li>
							%{--<img src="${resource(dir: 'assets/img', file: 'screen2.png')}"/>--}%
							<asset:image src="screen2.png"/>

						</li>
					</ul>
				</div>
			</div>
		</div>

	</div>
</div>

<div id="featureWrap">
	<div class="container">
		<div class="row">
			<div class="col-sm-4 text-center feature">
				<i class="fa fa-tablet icon"></i>
				<h3>Link Sharing</h3>
				<p>
					The fastest way to share your link with other websites, exhange links quickly and easily with this link exchange system
				</p>
			</div>
			<div class="col-sm-4 text-center feature">
				<i class="fa fa-pencil icon"></i>
				<h3>Document Sharing</h3>
				<p>
					If you want to send a file or folder to someone so that they can view, edit, or comment on it, you can share it with them directly in Google Drive, Docs,	</p>
			</div>
			<div class="col-sm-4 text-center feature">
				<i class="fa fa-star icon"></i>
				<h3>Mail Sending</h3>
				<p>
					Creating and sending an e-mail message is, in many ways, similar to writing a letter without a stamp. In fact sending an e-mail is much the same as sending a letter.
				</p>
			</div>
		</div>
	</div>
</div> <!-- /featureWrap -->

<div class="altWrap">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<h2 class="sectionTitle">Register &amp; New Account</h2>
				<h3 class="sectionTitle">LinkSharing Docs-Online document management provides an easy, reliable and secure way to share files and folders. It acts as a centralized repository, where you can upload and store all your documents and share them with multiple users in your organization working in different locations.</h3>
			</div>
		</div>
		<g:render template="/templates/user/register"></g:render>


	</div>
</div> <!-- /productWrap -->

<g:render template="/templates/user/login"></g:render>
<div id="testimonialsWrap" class="altWrap">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<h2 class="sectionTitle">What people say</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="quote">"Etizzle laoreet doggy dope nisl. Dang pulvinizzle, ipsizzle dawg."</div>
							<div class="author">Martin Nizzle</div>
						</li>
						<li>
							<div class="quote">"Crazy tellus urna, yo mamma check out this, eleifend you son of a bizzle."</div>
							<div class="author">Jennifer Aliquizzle</div>
						</li>
						<li>
							<div class="quote">"Praesent i saw beyonces tizzles and my pizzle went crizzle turpizzle."</div>
							<div class="author">William Lorizzle</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div> <!-- /testimonialsWrap -->

<div id="contactWrap">
	<div class="overlay">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<h2 class="sectionTitle">Contact us</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 text-center">
					<div class="blurb">
						Want to chat? Send us a message. We'd love to hear from you!
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-4 col-sm-offset-2">
					<div class="inputContainer">
						<label>Name</label>
						<input type="text" name="contactName" id="contactName" value="" class="form-control" autocomplete="off" />
					</div>
				</div>
				<div class="col-sm-4">
					<div class="inputContainer">
						<label class="screen-reader-text">Email</label>
						<input type="text" name="email" id="email" value="" class="form-control" autocomplete="off"  />
					</div>
				</div>
				<div class="col-sm-8 col-sm-offset-2">
					<div class="inputContainer">
						<label class="screen-reader-text">Message</label>
						<textarea name="comments" id="commentsText" class="form-control" autocomplete="off"></textarea>
					</div>
				</div>
				<div class="col-sm-8 col-sm-offset-2">
					<button name="submit" type="button" class="btn btn-primary btn-lg">Send</button>
				</div>
			</div>
		</div>
	</div>
</div> <!-- /contactWrap -->

<footer class="footer-distributed">

	<div class="footer-left">
		<h3><span>
			<asset:image src="xlogo-large.png.pagespeed.ic.mNf2OdVkJv.png"/></span></h3>

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
<g:render template="/templates/user/forgotpassword"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="${resource(dir:'bootstrap/js',file:'bootstrap.min.js')}"></script>
<script src="${assetPath(src:'flexslider.js')}"></script>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css"/>
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> </script>

<script type="text/javascript">
	$(document).ready(function() {
		function randomNumber(min, max) {
			return Math.floor(Math.random() * (max - min + 1) + min);
		};
		$('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));
		$('#registrationForm').bootstrapValidator({
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
				username: {
					message: 'The username is not valid',
					validators: {
						notEmpty: {
							message: 'The username is required and can\'t be empty'
						},
						stringLength: {
							min: 6,
							max: 30,
							message: 'The username must be more than 6 and less than 30 characters long'
						},
						regexp: {
							regexp: /^[a-zA-Z0-9_\.]+$/,
							message: 'The username can only consist of alphabetical, number, dot and underscore'
						},
						different: {
							field: 'password',
							message: 'The username and password can\'t be the same as each other'
						}
					}
				},
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
				},
				captcha: {
					validators: {
						callback: {
							message: 'Wrong answer',
							callback: function(value, validator) {
								var items = $('#captchaOperation').html().split(' '), sum = parseInt(items[0]) + parseInt(items[2]);
								return value == sum;
							}
						}
					}
				}
			}

		});







		$('.mobileSlider').flexslider({
			animation: "slide",
			slideshowSpeed: 3000,
			controlNav: false,
			directionNav: true,
			prevText: "&#171;",
			nextText: "&#187;"
		});
		$('.flexslider').flexslider({
			animation: "slide",
			directionNav: false
		});

		$('a[href*=#]:not([href=#])').click(function() {
			if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') || location.hostname == this.hostname) {
				var target = $(this.hash);
				target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
				if ($(window).width() < 768) {
					if (target.length) {
						$('html,body').animate({
							scrollTop: target.offset().top - $('.navbar-header').outerHeight(true) + 1
						}, 1000);
						return false;
					}
				}
				else {
					if (target.length) {
						$('html,body').animate({
							scrollTop: target.offset().top - $('.navbar').outerHeight(true) + 1
						}, 1000);
						return false;
					}
				}
			}
		});

		$('#toTop').click(function() {
			$('html,body').animate({
				scrollTop: 0
			}, 1000);
		});

		var timer;
		$(window).bind('scroll',function () {
			clearTimeout(timer);
			timer = setTimeout( refresh , 50 );
		});
		var refresh = function () {
			if ($(window).scrollTop()>100) {
				$(".tagline").fadeTo( "slow", 0 );
			}
			else {
				$(".tagline").fadeTo( "slow", 1 );
			}
		};

	});
</script>

<script>
	$(function () {
		$('input').iCheck({
			checkboxClass: 'icheckbox_square-blue',
			radioClass: 'iradio_square-blue',
			increaseArea: '20%' // optional
		});
	});
</script>

%{--<g:render template="../templates/user/forgotpassword"/>--}%

</body>

</html>