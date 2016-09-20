package model.db;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashSet;

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
			ResultSet resultSet = st.executeQuery("SELECT title, director, writter,pg_rating,movie_length,release_date,awards,resume,poster_pic,movie_rating,number_of_rates FROM movies ORDER BY movie_rating Desc;");
			while(resultSet.next()){
				movies.add(new Movie(	resultSet.getString("title"),
										resultSet.getString("director"),
										resultSet.getString("writter"),
										resultSet.getString("pg_rating"),
										resultSet.getString("movie_length"),
										resultSet.getString("release_date"),
										resultSet.getString("awards"),
										resultSet.getString("resume"),
										resultSet.getString("poster_pic"),
										resultSet.getDouble("movie_rating"),
										resultSet.getInt("number_of_rates")
										));
			}
		} catch (SQLException e) {
			System.out.println("Oops, cannot make statement in getAllMovies .");
			return movies;
		}
		System.out.println("Movies loaded successfully");
		return movies;
	}
	
	public void addMovie(Movie m){
		try {
			PreparedStatement st = DBManager.getInstance().getConnection().prepareStatement("INSERT INTO movies (title, director, writter,pg_rating,"
			+ "movie_length,release_date,awards,resume,poster_pic,movie_rating,number_of_rates) VALUES (?,?,?,?,?,?,?,?,?,?,?);");
			
			st.setString(1, m.getTitle());
			st.setString(2, m.getDirector());
			st.setString(3, m.getWritter());
			st.setString(4, m.getPg_rating());
			st.setString(5, m.getMovieLength());
			st.setString(6, m.getReleaseDate());
			st.setString(7, m.getAwards());
			st.setString(8, m.getResume());
			st.setString(9, m.getPosterLink());
			st.setDouble(10, m.getMovieRating());
			st.setInt(11, m.getNumberOfRates());
			
			st.executeUpdate();
			System.out.println("Movie added successfully");
		} catch (SQLException e) {
			System.out.println("Oops .. did not save the movie");
			e.printStackTrace();
		}
		
		
	}
	
	public void rateMovie(Movie m, int rate){ 
		
		double rating = m.getMovieRating()*(m.getNumberOfRates()+rate)/(m.getNumberOfRates()+1);
		m.setNumberOfRates(m.getNumberOfRates()+1);
		m.setMovieRating(rating);
		try {
			
			PreparedStatement pst = DBManager.getInstance().getConnection().prepareStatement("UPDATE movies SET number_of_rates = ?, movie_rating = ?  WHERE title = ? ;");
			pst.setInt(1, m.getNumberOfRates()+1);
			pst.setDouble(2, rating);
			pst.setString(3, m.getTitle());
			pst.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Rate problems :)");
			e.printStackTrace();
		}
	}
	
    public void watchMovie(Movie m, User u){
		//todo	
    }
    
   
        public Movie getMovieById(String movieName){
    
        Movie m = null;
    	try {
    		PreparedStatement st = DBManager.getInstance().getConnection().prepareStatement("SELECT title, director, writter,pg_rating,movie_length,release_date,awards,resume,poster_pic,movie_rating,number_of_rates "
    				+ "FROM movies WHERE title =" +  movieName);
			ResultSet resultSet = st.executeQuery();
			while(resultSet.next()){
				         m = new Movie(	resultSet.getString("title"),
										resultSet.getString("director"),
										resultSet.getString("writter"),
										resultSet.getString("pg_rating"),
										resultSet.getString("movie_length"),
										resultSet.getString("release_date"),
										resultSet.getString("awards"),
										resultSet.getString("resume"),
										resultSet.getString("poster_pic"),
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
