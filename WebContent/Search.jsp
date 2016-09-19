<%@page import="model.MovieManager"%>
<%@page import="model.Movie"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>MovieRate</title>

		<!-- Loading third party fonts -->
		<link href="http://fonts.googleapis.com/css?family=Roboto:300,400,700|" rel="stylesheet" type="text/css">
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
						<button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
						<ul class="menu">
						<li class="menu-item current-menu-item"><a href="index.jsp">Home</a></li>
						<%if(session.getAttribute("loggedAs") == null){%>
						<li class="menu-item"><a href="login.jsp">Log In</a></li>
						<li class="menu-item"><a href="register.jsp">Register</a></li>
						<% } else{%>
						<li class="menu-item"><a href="addMovie.jsp">Add Movie</a></li>
						<li class="menu-item"><a href="LogOutServlet" >Log Out</a></li>
						<%} %>
					</ul>
					<!-- .menu -->

						<form action="SearchMovieServlet" method="GET"  class="search-form">
						<input id= "title" type="text" class="form-control" placeholder="title" name="title" required>
						<button>
							<i class="fa fa-search" ></i>
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
						<div class="breadcrumbs">
							<a href="index.jsp">Home</a>
							<span>Search</span>
						</div>

						
						<div class="movie-list">
						<%	String title=(String)session.getAttribute("title");
						if(title == null){ %>
								<h1>Sorry. No results found...</h1>
							<%}
							else{%>
						<%for(Movie m : MovieManager.getInstance().searchMovie(request.getParameter("title"))){ %>
							
							<div class="movie">
								<figure class="movie-poster"><img src= <%=m.getPosterLink()%> alt=<%=m.getTitle() %>></figure>
								<div class="movie-title"><a href="single.html"><%=m.getTitle() %></a></div>
								<p><%=m.getResume() %></p>
							</div>
							<%} 
							}%>
						</div> <!-- .movie-list -->
					</div>
				</div> <!-- .container -->
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