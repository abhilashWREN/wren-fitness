<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html class="no-js">
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>WREN Fitness</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />
	
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
	 <link type="text/css" rel="stylesheet" href="<c:url value='/resources/css/dyscrollup.min.css' />"></link>
       
	<!-- Animate.css -->
	<link rel="stylesheet" href="<c:url value='/resources/css/animate.css' />"></link>
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="<c:url value='/resources/css/icomoon.css' />"></link>
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.css' />"></link>
	<!-- Superfish -->
	<link rel="stylesheet" href="<c:url value='/resources/css/superfish.css' />"></link>

	<link rel="stylesheet" href="<c:url value='/resources/css/style.css' />"></link>


	<!-- Modernizr JS -->
	<script src="<c:url value='/resources/js/modernizr-2.6.2.min.js' />"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="resources/js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
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
									<a href="/wren-fitness/trainee">Home</a>
								</li>	
							<!-- 	<li><a href="#" class="fh5co-sub-ddown">Event</a>
									<ul class="fh5co-sub-menu">
										<li><a href="/schedule">Book an Event</a></li>
										<li><a href="/viewevent">View My Event</a></li>
									</ul>
								</li> -->
								<li  class="active"><a href="#" class="fh5co-sub-ddown">User</a>
									<ul class="fh5co-sub-menu" >
										<li><a href="/wren-fitness/trainer/viewprofile">My Profile</a></li>
										<li><a href="/wren-fitness/logout">Logout</a></li>
									</ul>
								</li>
								<li><a href="/login">Login</a></li>
								
							</ul>
						</nav>
					</div>
				</div>
			</header>		
		</div>
		<!-- end:fh5co-header -->
		<div class="fh5co-parallax" style="background-image: url(images/image1.jpg);" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
						<div class="fh5co-intro fh5co-table-cell animate-box">
							<h1 class="text-center">My Profile</h1>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
						</div>
					</div>
				</div>
			</div>
		</div><!-- end: fh5co-parallax -->
		<!-- end:fh5co-hero -->
		
		<div id="fh5co-programs-section">
			<div class="container">
				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-10 animate-box">
							<div class="row" style="font-size:20px;">
								<div class="col-md-12 text-center"><h2>My Profile</h2><br></div>
								<div class="col-md-4">
									<span style="color:#4CB648;">First Name</span>
								</div>
								<div class="col-md-8">
									<span>${user.userProfile[0].firstName}</span>
								</div>
								<div class="col-md-12"><hr></div>
								<div class="col-md-4">
									<span style="color:#4CB648;">Last Name</span>
								</div>
								<div class="col-md-8">
									<span>${user.userProfile[0].lastName}</span>
								</div>
								<div class="col-md-12"><hr></div>
								<div class="col-md-4">
									<span style="color:#4CB648;">Email</span>
								</div>
								<div class="col-md-8">
									<span>${user.email}</span>
								</div>
								<div class="col-md-12"><hr></div>
								<div class="col-md-4">
									<span style="color:#4CB648;">Mobile</span>
								</div>
								<div class="col-md-8">
									<span>${user.userProfile[0].contactNumber}</span>
								</div>
								<div class="col-md-12"><hr></div>
								<div class="col-md-4">
									<span style="color:#4CB648;">City</span>
								</div>
								<div class="col-md-8">
									<span>${user.userProfile[0].city}</span>
								</div>
							<!-- 	<div class="col-md-12 text-center"><br>
									<ul class="schedule">
										<li><a href="#" data-sched="sunday">Edit Profile</a></li>
										<li><a href="#" class="active" data-sched="sunday">Change Password</a></li>
									</ul>
								</div> -->
							</div>
						</div>
						<div class="col-md-1"></div>
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
			dyscrollup.init({image : '<c:url value='/resources/images/36.png'/>'});
	</script>
	

	</body>
</html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
</body>
</html>
