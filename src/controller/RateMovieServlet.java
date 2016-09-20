package controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Movie;
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

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (isNumeric(request.getParameter("rating"))) {

			int rate = Integer.parseInt(request.getParameter("rating"));// da se
																		// testva,

			String movie = request.getParameter("movie");// da se testva,
			Movie m = MovieManager.getInstance().getMovie(movie);
			System.out.println("Rating - " + rate);
			System.out.println("title = " + m.getTitle());
			String logged = (String) request.getSession().getAttribute("loggedAs");
			if (logged == null) {// session is new or expired
				RequestDispatcher view = request.getRequestDispatcher("login.jsp");
				view.forward(request, response);
			} else {
				User user = UsersManager.getInstance().getUser(logged);
				MovieDAO.getInstance().rateMovie(m, rate);
				// �� �� �������� ���������� � ��������� �� ����� �������
				request.setAttribute("title", m.getTitle());
				RequestDispatcher view = request.getRequestDispatcher("movie.jsp?title =" + m.getTitle());
				view.forward(request, response);
			}
		}

		else {
			RequestDispatcher view = request.getRequestDispatcher("movie.jsp");
			view.forward(request, response);

		}
	}

	public static boolean isNumeric(String str) {
		return str.matches("-?\\d+(\\.\\d+)?"); // match a number with optional
												// '-' and decimal.
	}

}
