package controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MovieManager;
import model.User;
import model.UsersManager;
import model.db.MovieDAO;

/**
 * Servlet implementation class RateMovieServlet
 */
@WebServlet("/RateMovieServlet")
public class RateMovieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      
		int rate = Integer.parseInt(request.getParameter("rate"));// da se testva, 
		int movieId = Integer.parseInt(request.getParameter("id"));// da se testva, 
		
		String requestedUsername = request.getParameter("username");
		if(requestedUsername != null){
			User user = UsersManager.getInstance().getUser(requestedUsername);
			
		}
		String logged = (String) request.getSession().getAttribute("loggedAs");
		if(logged == null){//session is new or expired
			System.out.println("This should not happen right now. Might happen later on other pages");
		}
		else{
			User user = UsersManager.getInstance().getUser(logged);
			MovieDAO.getInstance().rateMovie(MovieDAO.getInstance().getMovieById(movieId), user, rate);
			// Да се рефрешне страницата с изписване на новия рейтинг
			RequestDispatcher view = request.getRequestDispatcher("refreshThePageAfterRate.html");// refresh the page with new movie rating
			view.forward(request, response);
			
			
		}
	}

}
  