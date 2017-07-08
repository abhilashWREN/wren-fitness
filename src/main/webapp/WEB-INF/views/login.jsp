<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html class="no-js">
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>WREN Fitness</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,900' rel='stylesheet' type='text/css'>
	 <link type="text/css" rel="stylesheet" href="<c:url value='/resources/css/dyscrollup.min.css' />">
    
	<!-- Animate.css -->
	<link rel="stylesheet" href="<c:url value='/resources/css/animate.css' />">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="<c:url value='/resources/css/icomoon.css' />">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.css' />">
	<!-- Superfish -->
	<link rel="stylesheet" href="<c:url value='/resources/css/superfish.css' />">

	<link rel="stylesheet" href="<c:url value='/resources/css/style.css' />">


	<!-- Modernizr JS -->
	<script src="<c:url value='/resources/js/modernizr-2.6.2.min.js' />"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body style="background-image:url(<c:url value='/resources/images/back.jpg' />);">
		<div id="fh5co-wrapper">
		<div id="fh5co-page">
		<div id="fh5co-header">
			<header id="fh5co-header-section">
				<div class="container">
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
						<h1 id="fh5co-logo"><a href="/wren-fitness/">WREN Fit<span>ness</span></a></h1>
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu">
								<li>
									<a href="/wren-fitness/">Home</a>
								</li>	
								<!-- <li><a href="#" class="fh5co-sub-ddown">Event</a>
									<ul class="fh5co-sub-menu">
										<li><a href="/wren-fitness/schedule">Book an Event</a></li>
										<li><a href="/wren-fitness/viewevent">View My Event</a></li>
									</ul>
								</li> -->
								<li><a href="/newuser">Register</a></li>
								<li><a href="#" class="fh5co-sub-ddown">User</a>
									<ul class="fh5co-sub-menu" >
										<li><a href="/wren-fitness/viewprofile">My Profile</a></li>
										<li><a href="/logout" >Logout</a></li>
									</ul>
								</li>
								<li  class="active"><a href="/wren-fitness/login">Login</a></li>
								
							</ul>
						</nav>
					</div>
				</div>
			</header>		
		</div>
		<!-- end:fh5co-header -->
		
		<div id="fh5co-programs-section">
			<div class="container">
				<div class="row"><br>
				<c:url var="loginUrl" value="/login" />
					<div class="col-md-6 animate-box" style="border:1px solid #4cb648;padding:20px;border-radius:5px;">
							<div class="row">
								<div class="col-md-12 text-center"><h2 style="color:#fff;">Login to Your Account!</h2></div>
								<form action="/wren-fitness/login" method="post">
								<c:if test="${param.error != null}">
                                <div class="alert alert-danger">
                                    <p>Invalid username and password.</p>
                                </div>
                            </c:if>
                            <c:if test="${param.logout != null}">
                                <div class="alert alert-success">
                                    <p>You have been logged out successfully.</p>
                                </div>
                            </c:if>
								<div class="col-md-12">
									<div class="form-group">
										<input type="text" class="form-control" id="username" name="username"
										placeholder="Email" required>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<input type="password" class="form-control" id="password" name="password"
										placeholder="Password" required>
									</div>
								</div>
								<div class="col-md-12">
									<hr>
								<div class="col-md-6">
										<input type="checkbox" id="rememberme" name="remember-me"> Remember Me
								</div>
								<div class="col-md-6" style="text-align:right;"><a href="#"> Forget Your Password?</a></div>
									<br><br><br>
								</div>
								 <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
								<div class="col-md-12 text-center">
									<div class="form-group">
										<input type="submit" value="Login" class="btn btn-primary"> 
									</div>
								</div>
								<div class="col-md-12 text-center">
									<div class="form-group">
										Or <br> Don't have an Account?<a href="/wren-fitness/newuser">&nbspCreate one</a>
									</div>
								</div>
								
								
							</form>
							</div>
						</div>
						<div class="col-md-6">
						</div>
				</div>
			</div>
		</div>
		<footer>
			<div id="footer">
				<div class="container">
					<div class="row">
						<div class="col-md-4 animate-box">
							<h3 class="section-title">About Us</h3>
							<p>We are running a fitness club to make the people health,to make their life style beautifull.We beleive in health which is most important wealth for all of us.
							
							</p>
						</div>

						<div class="col-md-4 animate-box">
							<h3 class="section-title">Our Address</h3>
							<ul class="contact-info">
								<li><i class="icon-map-marker"></i>Your Adress is going to be palce HERE</li>
								<li><i class="icon-phone"></i>+ 1234 567 8910</li>
								<li><i class="icon-envelope"></i><a href="#">info@yoursite.com</a></li>
								<li><i class="icon-globe2"></i><a href="#">www.yoursite.com</a></li>
							</ul>
						</div>
						<div class="col-md-4 animate-box">
							<h3 class="section-title">Drop us a line</h3>
							<form class="contact-form">
								<div class="form-group">
									<label for="name" class="sr-only">Name</label>
									<input type="name" class="form-control" id="name" placeholder="Name">
								</div>
								<div class="form-group">
									<label for="email" class="sr-only">Email</label>
									<input type="email" class="form-control" id="email" placeholder="Email">
								</div>
								<div class="form-group">
									<label for="message" class="sr-only">Message</label>
									<textarea class="form-control" id="message" rows="7" placeholder="Message"></textarea>
								</div>
								<div class="form-group">
									<input type="submit" id="btn-submit" class="btn btn-send-message btn-md" value="Send Message">
								</div>
							</form>
						</div>
					</div>
					<div class="row copy-right">
						<div class="col-md-6 col-md-offset-3 text-center">
							<p class="fh5co-social-icons">
								<a href="#"><i class="icon-twitter2"></i></a>
								<a href="#"><i class="icon-facebook2"></i></a>
								<a href="#"><i class="icon-instagram"></i></a>
								<a href="#"><i class="icon-youtube"></i></a>
							</p>
							<p>&copy; Copyright 2016 <a href="#">www.yoursite.com</a>. All Rights Reserved.</p>
						</div>
					</div>
				</div>
			</div>
		</footer>
	

	</div>
	<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

	<!-- jQuery -->


	<script src="<c:url value='/resources/js/jquery.min.js' />"></script>
	<script src="<c:url value='/resources/js/jquery.migrate.js' />"></script>
	<!-- jQuery Easing -->
	<script src="<c:url value='/resources/js/jquery.easing.1.3.js' />"></script>
	<!-- Bootstrap -->
	<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>
	<!-- Waypoints -->
	<script src="<c:url value='/resources/js/jquery.waypoints.min.js' />"></script>
	<!-- Stellar -->
	<script src="<c:url value='/resources/js/jquery.stellar.min.js' />"></script>
	<!-- Superfish -->
	<script src="<c:url value='/resources/js/hoverIntent.js' />"></script>
	<script src="<c:url value='/resources/js/superfish.js' />"></script>

	<!-- Main JS (Do not remove) -->
	<script src="<c:url value='/resources/js/main.js' />"></script>
	 <script type="text/javascript" src="<c:url value='/resources/js/dyscrollup.min.js' />"></script>

	<script type="text/javascript">
		   dyscrollup.init({image : '<c:url value='/resources/images/36.png' />'});
	</script>

	</body>
</html>

