<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html class="no-js"> 
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>WREN Fitness</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,900' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.css' />"></link>
	<link rel="stylesheet" href="<c:url value='/resources/css/style.css' />"></link>

	</head>
	
	<body class="errorbgimg" style="background-image: url(resources/images/errorbg.jpg);">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 text-center" style="margin-top:20px;">
				<h1 style="font-size:50px;">:( Ooops!</h1>
				<center><img src="<c:url value='/resources/images/error.png' />" class="img-responsive erroricon"/></center>
				<br>
				<h3 class="fc">Something Went Wrong! </h3>
				<h4 class="fc">We are working hard to resolve it. Please try again.</h4>
			</div>
		</div>
	</body>
</html>