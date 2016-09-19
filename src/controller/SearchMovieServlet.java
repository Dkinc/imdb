package controller;

import java.io.IOException;
import java.util.HashSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Movie;
import model.MovieManager;


@WebServlet("/SearchMovieServlet")
public class SearchMovieServlet extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
		if(MovieManager.getInstance().searchMovie(title).isEmpty()){
			title = null;
			request.setAttribute("title", null);
		}
		RequestDispatcher view = request.getRequestDispatcher("Search.jsp?=" + title);
		view.forward(request, response);
	}

	

}
