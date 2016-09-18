package model.db;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;

import model.Movie;
import model.User;



public class MovieDAO {

    private static MovieDAO instance;
	
	private MovieDAO(){}
	
	public synchronized static MovieDAO getInstance(){
		if(instance == null){
			instance = new MovieDAO();
		}
		return instance;
	}
	
	public HashSet<Movie> getAllMovies(){
		HashSet<Movie> movies = new HashSet<Movie>();
		try {
			Statement st = DBManager.getInstance().getConnection().createStatement();
			ResultSet resultSet = st.executeQuery("SELECT title, director, writter,pg_rating,movie_length,release_date,awards,resume,movie_rating,number_of_rates FROM movies;");
			while(resultSet.next()){
				movies.add(new Movie(	resultSet.getString("title"),
										resultSet.getString("director"),
										resultSet.getString("writter"),
										resultSet.getString("pg_rating"),
										resultSet.getString("movie_length"),
										resultSet.getString("release_date"),
										resultSet.getString("awards"),
										resultSet.getString("resume"),
										resultSet.getDouble("movie_rating"),
										resultSet.getInt("number_of_rates")
										));
			}
		} catch (SQLException e) {
			System.out.println("Oops, cannot make statement.");
			return movies;
		}
		System.out.println("Movies loaded successfully");
		return movies;
	}
	
	public void addMovie(Movie m){
		try {
			PreparedStatement st = DBManager.getInstance().getConnection().prepareStatement("INSERT INTO movies (title, director, writter,pg_rating,"
			+ "movie_length,release_date,awards,resume,movie_rating,number_of_rates) VALUES (?,?,?,?,?,?,?,?,?,?);");
			
			st.setString(1, m.getTitle());
			st.setString(2, m.getDirector());
			st.setString(3, m.getWritter());
			st.setString(4, m.getPg_rating());
			st.setString(5, m.getMovieLength());
			st.setString(6, m.getReleaseDate());
			st.setString(7, m.getAwards());
			st.setString(8, m.getResume());
			st.setDouble(9, m.getMovieRating());
			st.setInt(10, m.getNumberOfRates());
			
			st.executeUpdate();
			System.out.println("Movie added successfully");
		} catch (SQLException e) {
			System.out.println("Oops .. did not save the movie");
			e.printStackTrace();
		}
		
		
	}
	
	public void rateMovie(Movie m, User u, int i){ 
		
		double rating = m.getMovieRating()*(m.getNumberOfRates()+i)/(m.getNumberOfRates()+1);
		m.setNumberOfRates(m.getNumberOfRates()+1);
		m.setMovieRating(rating);
		try {
			Statement st = DBManager.getInstance().getConnection().createStatement();
			st.executeUpdate("UPDATE movies SET number_of_rates = number_of_rates + 1, movie_rating = " + rating + " where title = " + m.getTitle() + " and  release_date = " + m.getReleaseDate());
			
		} catch (SQLException e) {
			System.out.println("Rate problems :)");
			e.printStackTrace();
		}
	}
	
    public void watchMovie(Movie m, User u){
		//todo	
    }
    
   
    public Movie getMovieById(int movieId){
    
        Movie m = null;
    	try {
			Statement st = DBManager.getInstance().getConnection().createStatement();
			ResultSet resultSet = st.executeQuery("SELECT title, director, writter,pg_rating,movie_length,release_date,awards,resume,movie_rating,number_of_rates FROM movies where "
					+ "idMovies = movieId;");
			while(resultSet.next()){
				         m = new Movie(	resultSet.getString("title"),
										resultSet.getString("director"),
										resultSet.getString("writter"),
										resultSet.getString("pg_rating"),
										resultSet.getString("movie_length"),
										resultSet.getString("release_date"),
										resultSet.getString("awards"),
										resultSet.getString("resume"),
										resultSet.getDouble("movie_rating"),
										resultSet.getInt("number_of_rates")
										);
			}
		} catch (SQLException e) {
			System.out.println("Oops, cannot make statement!");
			
		}
    	return m;
    }
}
