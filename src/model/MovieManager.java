package model;

import java.util.HashSet;
import java.util.concurrent.ConcurrentHashMap;

import model.db.MovieDAO;
import model.db.UserDAO;


public class MovieManager {

	private HashSet<Movie> movies;//
	
	
	private static MovieManager instance;
	
	private MovieManager(){
		
		this.movies = (HashSet<Movie>) MovieDAO.getInstance().getAllMovies();
	}
	
	public synchronized static MovieManager getInstance(){
		if(instance == null){
			instance = new MovieManager();
		}
		return instance;
	}
	/*
	 * Създава се (обект) филм (този който потребителя добавя).
	 */
	public void makeMovie(String title, String director, String writter, String pg_rating, String movieLength, String releaseDate, String awards, String resume){
		Movie m = new Movie(title, director, writter, pg_rating, movieLength, releaseDate, awards, resume, 0, 0);
		movies.add(m);//кешира
		MovieDAO.getInstance().addMovie(m);// записва в базата
	}
	
}
