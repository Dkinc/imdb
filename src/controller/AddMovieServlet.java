package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.MovieManager;


/**
 * Servlet implementation class AddMovieServlet
 */
@WebServlet("/AddMovieServlet")
public class AddMovieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath()); // ????
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("loggedAs") == null || request.getSession().isNew()){
			response.sendRedirect("login.jsp");
		} 
		String title = request.getParameter("title");
		String director = request.getParameter("director");
		String writter = request.getParameter("writter");
		String pg_rating = request.getParameter("pg_rating");
		String movieLength = request.getParameter("movieLength");
		String releaseDate = request.getParameter("releaseDate");
		String awards = request.getParameter("awards");
		String resume = request.getParameter("resume");
		String posterLink = request.getParameter("posterLink");
		boolean validation = false;
		if (title != null && director != null && writter != null && movieLength != null  && pg_rating != null && releaseDate != null  && awards != null  && resume != null && posterLink != null) {
			if (title != "" && director != "" && writter != "" && pg_rating != "" && director != ""  && movieLength != ""  && releaseDate != ""  && awards != ""  && resume != "" && posterLink != "") {
					validation = true;
			}
		}
		if (validation) {
		    MovieManager.getInstance().makeMovie(title, director, writter, pg_rating, movieLength, releaseDate, awards, resume, posterLink);
			RequestDispatcher view = request.getRequestDispatcher("index.jsp");// �� �� �������!
			view.forward(request, response);
		} else {
			RequestDispatcher view = request.getRequestDispatcher("addMovie.jsp"); // �� �� �������!
			view.forward(request, response);
		}
	}

}
