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
				<div class="container navbar" >
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
						<h1 id="fh5co-logo"><a href="/wren-fitness/">WREN Fit<span>ness</span></a></h1>
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu" >
								<li class="active">
									<a href="/wren-fitness/">Home</a>
								</li>	
								<!-- <li><a href="#" class="fh5co-sub-ddown">Event</a>
									<ul class="fh5co-sub-menu">
										<li><a href="/schedule">Book an Event</a></li>
										<li><a href="/viewevent">View My Event</a></li>
									</ul>
								</li> -->
								<li><a href="/wren-fitness/newuser">Register</a></li>
								<!-- <li><a href="#" class="fh5co-sub-ddown">User</a>
									<ul class="fh5co-sub-menu" >
										<li><a href="/wren-fitness/viewprofile">My Profile</a></li>
										<li><a href="/logout" >Logout</a></li>
									</ul>
								</li> -->
								<li><a href="/wren-fitness/login">Login</a></li>
								
								
							</ul>
						</nav>
					</div>
				</div>
			</header>		
		</div>
		
		<!-- end:fh5co-header -->
		 <div class="row">
        <div class="col-md-12">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
					<li data-target="#carousel-example-generic" data-slide-to="3"></li>
					<li data-target="#carousel-example-generic" data-slide-to="4"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="<c:url value='/resources/images/slide (1).jpg' />" >
					</div>
					 <div class="item">
                        <img src="<c:url value='/resources/images/slide (2).jpg' />" >
					</div>
					 <div class="item">
                        <img src="<c:url value='/resources/images/slide (3).jpg' />">
					</div>
                    <div class="item">
                        <img src="<c:url value='/resources/images/slide (4).jpg' />">
                    </div>
                    <div class="item">
                        <img src="<c:url value='/resources/images/slide (5).jpg' />">
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                    </span></a><a class="right carousel-control"
                        href="#carousel-example-generic" data-slide="next">
                        </span>
						</a>
            </div>
            <div class="main-text hidden-xs">
                <div class="col-md-12 text-center">
                    <h1 style="color:#FFFFFF;">
                        Water Rest Excercise Nutrition</h1>
                    <h3 style="color:#FFFFFF;">
                        A way to lead a Healthy Life
                    </h3>
                    <div class="">
                        <a class="btn btn-clear btn-sm btn-min-block" href="/wren-fitness/login">Login</a><a class="btn btn-clear btn-sm btn-min-block"
                            href="/wren-fitness/newuser">Registration</a></div>
                </div>
            </div>
        </div>
    </div>
		
		<!-- end:fh5co-hero -->
		<div id="fh5co-schedule-section" class="fh5co-lightgray-section">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<div class="heading-section text-center animate-box">
							<h2>Our Schedule</h2>
							<p>Join our Boot Camp Session near you</p>
						</div>
					</div>
				</div>
				<div class="row animate-box">
					<div class="col-md-10 col-md-offset-1 text-center">
						<ul class="schedule">
							<li><a href="#" class="active" data-sched="sunday">Sunday</a></li>
							<li><a href="#" data-sched="monday">Monday</a></li>
							<li><a href="#" data-sched="tuesday">Tuesday</a></li>
							<li><a href="#" data-sched="wednesday">Wednesday</a></li>
							<li><a href="#" data-sched="thursday">Thursday</a></li>
							<li><a href="#" data-sched="friday">Friday</a></li>
							<li><a href="#" data-sched="saturday">Saturday</a></li>
						</ul>
					</div>
					<div class="row text-center">

						<div class="col-md-12 schedule-container">

							<div class="schedule-content active" data-day="sunday">
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>Body Building</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="">
										<small>06AM-7AM</small>
										<h3>Yoga Programs</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="">
										<small>06AM-7AM</small>
										<h3>Cycling Program</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>Boxing Fitness</h3>
										<span>John Doe</span>
									</div>
								</div>
							</div>
							<!-- END sched-content -->

							<div class="schedule-content" data-day="monday">
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="">
										<small>06AM-7AM</small>
										<h3>Yoga Programs</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>Body Building</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>Boxing Fitness</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="">
										<small>06AM-7AM</small>
										<h3>Cycling Program</h3>
										<span>John Doe</span>
									</div>
								</div>
								
							</div>
							<!-- END sched-content -->

							<div class="schedule-content" data-day="tuesday">
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>Body Building</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="">
										<small>06AM-7AM</small>
										<h3>Yoga Programs</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="">
										<small>06AM-7AM</small>
										<h3>Cycling Program</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>Boxing Fitness</h3>
										<span>John Dose</span>
									</div>
								</div>
							</div>
							<!-- END sched-content -->

							<div class="schedule-content" data-day="wednesday">
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="">
										<small>06AM-7AM</small>
										<h3>Yoga Programs</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>Body Building</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>Boxing Fitness</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="">
										<small>06AM-7AM</small>
										<h3>Cycling Program</h3>
										<span>John Doe</span>
									</div>
								</div>
							</div>
							<!-- END sched-content -->

							<div class="schedule-content" data-day="thursday">
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>Body Building</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="">
										<small>06AM-7AM</small>
										<h3>Yoga Programs</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="">
										<small>06AM-7AM</small>
										<h3>Cycling Program</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>Boxing Fitness</h3>
										<span>John Dose</span>
									</div>
								</div>
							</div>
							<!-- END sched-content -->

							<div class="schedule-content" data-day="friday">
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="">
										<small>06AM-7AM</small>
										<h3>Yoga Programs</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-dumbell.svg' />" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>Body Building</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>Boxing Fitness</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-cycling.svg' />" alt="">
										<small>06AM-7AM</small>
										<h3>Cycling Program</h3>
										<span>John Doe</span>
									</div>
								</div>
							</div>
							<!-- END sched-content -->

							<div class="schedule-content" data-day="saturday">
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-dumbell.svg' />" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>Body Building</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-yoga.svg' />" alt="">
										<small>06AM-7AM</small>
										<h3>Yoga Programs</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-cycling.svg' />" alt="">
										<small>06AM-7AM</small>
										<h3>Cycling Program</h3>
										<span>John Doe</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<div class="program program-schedule">
										<img src="<c:url value='/resources/images/fit-boxing.svg' />" alt="Cycling">
										<small>06AM-7AM</small>
										<h3>Boxing Fitness</h3>
										<span>John Doe</span>
									</div>
								</div>
							</div>
							<!-- END sched-content -->
						</div>

						
					</div>
				</div>
			</div>
		</div>
		<div class="fh5co-parallax img-responsive" style="background-image: url(resources/images/fitness.jpg);" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
						<div class="fh5co-intro fh5co-table-cell animate-box">
							<h1 class="text-center">We also offer on demand work out sessions</h1>
							</div>
					</div>
				</div>
			</div>
		</div><!-- end: fh5co-parallax -->
		<div id="fh5co-programs-section">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<div class="heading-section text-center animate-box">
							<h2>Our Programs</h2>
							<p>WREN boot camps/work sessions are held in your community.</p>
							<p>Search our wide variety of sessions </p>
						</div>
					</div>
				</div>
				<div class="row text-center">
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="resources/images/fit-dumbell.svg" alt="Cycling">
							<h3>Body Combat</h3>
							<p>Cross Fit work out "we should include a little sentence about benefits of this workout"</p>
							<span><a href="#" class="btn btn-default">Join Now</a></span>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="resources/images/fit-yoga.svg" alt="">
							<h3>Yoga Programs</h3>
							<p>Yoga - "we should include a little sentence about benefits of yoga"</p>
							<span><a href="#" class="btn btn-default">Join Now</a></span>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="program animate-box">
							<img src="resources/images/fit-cycling.svg" alt="">
							<h3>Cycling Program</h3>
							<p>Cycling - "we should include a little sentence about benefits of this activity" </p>
							<span><a href="#" class="btn btn-default">Join Now</a></span>
						</div>
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
			dyscrollup.init({image : '<c:url value='/resources/images/36.png'/>'});
	</script>
	</body>
</html>

