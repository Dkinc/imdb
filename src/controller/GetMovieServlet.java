package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.MovieManager;
import model.Movie;

@WebServlet("/GetMovieServlet")
public class GetMovieServlet extends HttpServlet {
	
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Movie movie = MovieManager.getInstance().getMovie(request.getParameter("title"));
		request.setAttribute("title", movie.getTitle());
		request.setAttribute("director", movie.getDirector());
		request.setAttribute("writter", movie.getWritter());
		request.setAttribute("movieLength", movie.getMovieLength());
		request.setAttribute("releaseDate", movie.getReleaseDate());
		request.setAttribute("awards", movie.getAwards());
		request.setAttribute("resume", movie.getResume());
		request.setAttribute("posterLink", movie.getPosterLink());
		request.setAttribute("movieRating", movie.getMovieRating());
		request.setAttribute("numberOfRates", movie.getNumberOfRates());
		RequestDispatcher view = request.getRequestDispatcher("movie.jsp");
		view.forward(request, response);
	}


}
