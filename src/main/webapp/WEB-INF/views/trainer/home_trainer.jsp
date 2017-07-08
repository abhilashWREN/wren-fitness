<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	<!-- Full Calendar -->
	<link rel="stylesheet" href="<c:url value='/resources/css/fullcalendar.min.css' />"></link>
	<link rel="stylesheet" href="<c:url value='/resources/css/fullcalendar.print.min.css' />" media="print" ></link>
	<!-- JQUERY UI -->
	<%-- <link rel="stylesheet" href="<c:url value='/resources/css/jquery-ui.css' />" media="print" ></link> --%>
	<link rel="stylesheet" href="<c:url value='/resources/css/jquery-1.12.1-ui.min.css' />">
	
 	<script src="<c:url value='/resources/js/jquery-1.12.4.min.js'/>"></script>
  	<script src="<c:url value='/resources/js/jquery-1.12.1ui.min.js'/>"></script>
	 
	<link rel="stylesheet" href="<c:url value='/resources/css/style.css' />"></link>


	<!-- Modernizr JS -->
	<script src="<c:url value='/resources/js/modernizr-2.6.2.min.js' />"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="resources/js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
	<div id="dialog-form" style="display:none;">
  <form id="eventForm" action="/wren-fitness/trainer/addEvent" method="post" modelAttribute="userEventForm">
    <fieldset>
    <table>
    <tr> <td><label for="name">Event Title:</label></td>
    	 <td><input type="text" name="title" id="title" class="text ui-widget-content ui-corner-all"/></td>
    </tr>
    <tr>
    	<td><label for="allDay">All Day Event</label></td>
    	<td><input type="checkbox" value="allDayEvent" name="allDay" id="allDay" class="text ui-widget-content ui-corner-all"></td>
    </tr>
    <tr>
    	<td><label for="startDate">Start Date</label></td>
    	<td><input type="text" id="startDate" name="startDate" class="text ui-widget-content ui-corner-all" readonly/></td>
    </tr>
    <tr>
    	<td><label for="endDate">End Date</label></td>
    	<td><input type="text" id="endDate" name="endDate" class="text ui-widget-content ui-corner-all" readonly/></td>
    </tr>
    <tr>
    	<td><label for="address">Address</label></td>
    	<td> <input type="text" id="address" name="address" class="text ui-widget-content ui-corner-all"/></td>
    </tr>
    <tr>
    	<td> <label for="capacity">Capacity</label></td>
    	<td> <input type="text" id="capacity" name="capacity" class="text ui-widget-content ui-corner-all"/></td>
    </table>
     <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
      <!-- Allow form submission with keyboard without duplicating the dialog button -->
      <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
    </fieldset>
  </form>
  
  </div>
		<div id="fh5co-wrapper">
		<div id="fh5co-page">
		<div id="fh5co-header">
			<header id="fh5co-header-section">
				<div class="container navbar" >
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
						<h1 id="fh5co-logo"><a href="/wren-fitness/trainer">WREN Fit<span>ness</span></a></h1>
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu" >
								<li class="active">
									<a href="/wren-fitness/trainer">Home</a>
								</li>	
								<!-- <li><a href="#" class="fh5co-sub-ddown">Event</a>
									<ul class="fh5co-sub-menu">
										<li><a href="/schedule">Book an Event</a></li>
										<li><a href="/viewevent">View My Event</a></li>
									</ul>
								</li> -->
								<li><a href="#" class="fh5co-sub-ddown">User</a>
									<ul class="fh5co-sub-menu" >
										<li><a href="/wren-fitness/trainer/viewprofile">My Profile</a></li>
										<li><a href="/wren-fitness/logout" >Logout</a></li>
									</ul>
								</li>
								
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
                        Welcome <c:out value='${loggedinuser}'/></h1>
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
							<h2>Your Schedule</h2>
							<p>The below calendar shows your. you can add an session to your schedule.</p>
						</div>
					</div>
				</div>
				<div class="row animate-box">
					
					<div class="row text-center">

						<div class="col-md-12 schedule-container">

							<div id='calendar'></div>
							
							<!-- END sched-content -->
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


    <!-- Bootstrap -->
	<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>
	<!-- jQuery -->
	<script src="<c:url value='/resources/js/jquery.min.js' />"></script>
	<script src="<c:url value='/resources/js/jquery-ui.min.js' />"></script> 
	<script src="<c:url value='/resources/js/jquery.migrate.js' />"></script>
	 
	<!-- jQuery Easing -->
	<script src="<c:url value='/resources/js/jquery.easing.1.3.js' />"></script>
	
	<!-- Waypoints -->
	<script src="<c:url value='/resources/js/jquery.waypoints.min.js' />"></script>
	<!-- Stellar -->
	<script src="<c:url value='/resources/js/jquery.stellar.min.js' />"></script>
	<!-- Superfish -->
	<script src="<c:url value='/resources/js/hoverIntent.js' />"></script>
	<script src="<c:url value='/resources/js/superfish.js' />"></script>

	<script src="<c:url value='/resources/js/moment.min.js' />"></script>
	<script src="<c:url value='/resources/js/fullcalendar.min.js' />"></script>


	<!-- Main JS (Do not remove) -->
	<script src="<c:url value='/resources/js/main.js' />"></script>
	<script src="<c:url value='/resources/js/scheduleTrainer.js' />"></script>
	 <script type="text/javascript" src="<c:url value='/resources/js/dyscrollup.min.js' />"></script>

	<script type="text/javascript">
	
			dyscrollup.init({image : '<c:url value='/resources/images/36.png' />'});
			
			$(document).ready(function() {
				
				$('#calendar').fullCalendar({
					header: {
						left: 'prev,next today',
						center: 'title',
						right: 'month,agendaWeek,agendaDay'
					},
					defaultDate: '2017-05-12',
					navLinks: true, // can click day/week names to navigate views
					selectable: true,
					//selectHelper: true,
					select: function(start, end) {
						var title = openDialog(start,end);//prompt('Event Title:');
						/*var eventData;
						if (title) {
							eventData = {
								title: title,
								start: start,
								end: end
							};
							$('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
						}
						$('#calendar').fullCalendar('unselect');*/
					},
					editable: true,
					eventLimit: true, // allow "more" link when too many events
					events: [
			<c:forEach items="${events}" var="event" varStatus="status">
			<c:if test="${fn:length(events) gt 0}">
			{
				title: '<c:out value='${event.title}'/>',
			 	start: '<c:out value='${event.startDate}'/>',
			 	<c:choose>
				 
		 		<c:when test= "${event.currCapacity ge event.maxCapacity}">
		 			backgroundColor: 'red',
		 		</c:when>
		 		<c:otherwise>
					backgroundColor: 'green',
		 		</c:otherwise>
		 	</c:choose>
				 <c:choose>
				 	<c:when test= "${not empty event.repeatID}">
				 	id: '<c:out value='${event.repeatID}'/>',
				 	</c:when>
				 	
				 	<c:when test= "${not empty event.endDate}">
				 	end: '<c:out value='${event.endDate}'/>'
				 	</c:when>
				 </c:choose>
				    
			}
				 	<c:if test="${status.count lt fn:length(events)}">
				 	,
				 	</c:if>
			</c:if>
			</c:forEach>
					]
				});
				
			});
	</script>
	</body>
</html>

