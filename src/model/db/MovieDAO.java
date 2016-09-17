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
	
	public Set<Movie> getAllMovies(){
		HashSet<Movie> movies = new HashSet<Movie>();
		try {
			Statement st = DBManager.getInstance().getConnection().createStatement();
			ResultSet resultSet = st.executeQuery("SELECT title, director, writter,pg_rating,movieLength,releaseDate,awards,resume,movieRating,numberOfRates FROM movies;");
			while(resultSet.next()){
				movies.add(new Movie(	resultSet.getString("title"),
										resultSet.getString("director"),
										resultSet.getString("writter"),
										resultSet.getString("pg_rating"),
										resultSet.getString("movieLength"),
										resultSet.getString("releaseDate"),
										resultSet.getString("awards"),
										resultSet.getString("resume"),
										resultSet.getDouble("movieRating"),
										resultSet.getInt("numberOfRates")
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
			+ "movieLength,releaseDate,awards,resume,movieRating,numberOfRates) VALUES (?,?,?,?,?,?,?,?,?,?);");
			
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
			st.executeUpdate("UPDATE movies SET numberOfRates = numberOfRates + 1, movie_rating = " + rating + " where title = " + m.getTitle() + " and  releaseDate = " + m.getReleaseDate());
			
		} catch (SQLException e) {
			System.out.println("Rate problems :)");
			e.printStackTrace();
		}
	}
	
    public void watchMovie(Movie m, User u){
		//todo	
    }
    
    public void searchMovie(String str){
		//todo	
    }
    
}
