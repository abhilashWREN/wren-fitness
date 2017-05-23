<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	 <link type="text/css" rel="stylesheet" href="css/dyscrollup.min.css">
    
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="css/superfish.css">

	<link rel="stylesheet" href="css/style.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
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
						<h1 id="fh5co-logo"><a href="/index">WREN Fit<span>ness</span></a></h1>
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu">
								<li>
									<a href="/index">Home</a>
								</li>	
								<li><a href="#" class="fh5co-sub-ddown">Event</a>
									<ul class="fh5co-sub-menu">
										<li><a href="/schedule">Book an Event</a></li>
										<li><a href="/viewevent">View My Event</a></li>
									</ul>
								</li>
								<li  class="active"><a href="/register">Register</a></li>
								<li><a href="#" class="fh5co-sub-ddown">User</a>
									<ul class="fh5co-sub-menu" >
										<li><a href="/viewprofile">My Profile</a></li>
										<li><a href="<c:url value="/logout" />" target="_blank">Logout</a></li>
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
		<div class="fh5co-parallax" style="background-image: url(images/image9.jpg);" data-stellar-background-ratio="0.2">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
						<div class="fh5co-intro fh5co-table-cell animate-box">
							<h1 class="text-center">Get Registered With Us!</h1>
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
					<div class="col-md-8 animate-box">
							<div class="row">
								<div class="col-md-12 text-center"><h2>Create Your Account With Us!</h2></div>
								<div class="col-md-6">
								<form:form method="post" modelAttribute="user">
								<form:input type="hidden" path="id" id="id"/>
										<div class="form-group">
											<form:input type="text" class="form-control" path="firstName" id="firstName"
												placeholder="Firstname" required />
											<div class="has-error">
												<form:errors path="firstName" class="help-inline" />
											</div>
										</div>
										</div>
								<div class="col-md-6">
									<div class="form-group">
										<form:input type="text" class="form-control" path="lastName" id="lastName"
										placeholder="Lastname" required/>
										<div class="has-error">
                            <form:errors path="lastName" class="help-inline"/>
                        </div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<form:input type="email" class="form-control" path="email" id="email"
										placeholder="Email" required/>
										<div class="has-error">
                            <form:errors path="email" class="help-inline"/>
                        </div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<form:input type="password" class="form-control" path="password" id="password"
										 placeholder="Password" required/>
										 <div class="has-error">
                            <form:errors path="password" class="help-inline"/>
                        </div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<form:input type="password" class="form-control" path="confirmPassword" id="confirmPassword"
										 placeholder="Confirm Password" required/>
										 <div class="has-error">
                            <form:errors path="confirmPassword" class="help-inline"/>
                        </div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<form:input type="text" class="form-control" path="city" id="city"
										 placeholder="City" required/>
										 <div class="has-error">
                            <form:errors path="city" class="help-inline"/>
                        </div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<form:input type="phone" class="form-control" path="contactNo" id="contactNo"
										 placeholder="Phone No"/>
										 <div class="has-error">
                            <form:errors path="city" class="help-inline"/>
                        </div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<input type="submit" value="Join Us" class="btn btn-primary">
									</div>
								</div>
							</form:form>
							</div>
						</div>
						<div class="col-md-4"></div>
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


	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Superfish -->
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.js"></script>

	<!-- Main JS (Do not remove) -->
	<script src="js/main.js"></script>

	 <script type="text/javascript" src="js/dyscrollup.min.js"></script>

	<script type="text/javascript">
		   dyscrollup.init({image : 'images/36.png'});
	</script>
	
	</body>
</html>

