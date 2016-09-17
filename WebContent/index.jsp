<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="model.UsersManager" %>
	<%@ page import="model.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1">

<title>MovieRate</title>

<!-- Loading third party fonts -->
<link href="http://fonts.googleapis.com/css?family=Roboto:300,400,700|"
	rel="stylesheet" type="text/css">
<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

<!-- Loading main css file -->
<link rel="stylesheet" href="style.css">

<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->

</head>


<body>


	<div id="site-content">
		<header class="site-header">
			<div class="container">
				<a href="index.jsp" id="branding"> <img src="images/logo.png"
					alt="" class="logo">
					<div class="logo-copy">
						<h1 class="site-title">MovieRate</h1>
						<small class="site-description">Find the best movies!</small>
					</div>
				</a>
				<!-- #branding -->

				<div class="main-navigation">
					<button type="button" class="menu-toggle">
						<i class="fa fa-bars"></i>
					</button>
					<ul class="menu">
						<li class="menu-item current-menu-item"><a href="index.jsp">Home</a></li>
						<li class="menu-item"><a href="about.html">About</a></li>
						<%if(session.getAttribute("loggedAs") == null){%>
						<li class="menu-item"><a href="login.html">Log In</a></li>
						<li class="menu-item"><a href="register.html">Register</a></li>
						<% } else{%>
						<li class="menu-item"><a href="addMovie.html">Add Movie</a></li>
						<li class="menu-item"><a href="LogOutServlet" >Log Out</a></li>
						<%} %>
						<!-- 
							<li class="menu-item"><a href="review.html">Movie reviews</a></li>
							<li class="menu-item"><a href="joinus.html">Join us</a></li>
							<li class="menu-item"><a href="contact.html">Contact</a></li>
							 -->
					</ul>
					<!-- .menu -->

					<form action="#" class="search-form">
						<input type="text" placeholder="Search...">
						<button>
							<i class="fa fa-search"></i>
						</button>
					</form>
				</div>
				<!-- .main-navigation -->


				<div class="mobile-navigation"></div>
			</div>
		</header>
		<main class="main-content">
		<div class="container">
			<div class="page">
				<div class="row">
					<div class="col-md-9">
						<div class="slider">
							<ul class="slides">
								<li><a href="#"><img src="dummy/slide-1.jpg"
										alt="Slide 1"></a></li>
								<li><a href="#"><img src="dummy/slide-2.jpg"
										alt="Slide 2"></a></li>
								<li><a href="#"><img src="dummy/slide-3.jpg"
										alt="Slide 3"></a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3">
						<div class="row">
							<div class="col-sm-6 col-md-12">
								<div class="latest-movie">
									<a href="#"><img src="dummy/thumb-1.jpg" alt="Movie 1"></a>
								</div>
							</div>
							<div class="col-sm-6 col-md-12">
								<div class="latest-movie">
									<a href="#"><img src="dummy/thumb-2.jpg" alt="Movie 2"></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- .row -->
				<div class="row">
					<div class="col-sm-6 col-md-3">
						<div class="latest-movie">
							<a href="#"><img src="dummy/thumb-3.jpg" alt="Movie 3"></a>
						</div>
					</div>
					<div class="col-sm-6 col-md-3">
						<div class="latest-movie">
							<a href="#"><img src="dummy/thumb-4.jpg" alt="Movie 4"></a>
						</div>
					</div>
					<div class="col-sm-6 col-md-3">
						<div class="latest-movie">
							<a href="#"><img src="dummy/thumb-5.jpg" alt="Movie 5"></a>
						</div>
					</div>
					<div class="col-sm-6 col-md-3">
						<div class="latest-movie">
							<a href="#"><img src="dummy/thumb-6.jpg" alt="Movie 6"></a>
						</div>
					</div>
				</div>
				<!-- .row -->
		</main>

		<footer class="site-footer">
			<div class="container">
				<div class="colophon">Copyright 2016 MovieRate , Designed by
					Angel, Denis and Miroslav. All rights reserved</div>
			</div>
			<!-- .container -->

		</footer>
	</div>
	<!-- Default snippet for navigation -->



	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/app.js"></script>

</body>

</html>