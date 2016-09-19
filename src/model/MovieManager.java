package model;

import java.util.HashSet;


import model.db.MovieDAO;
import model.db.UserDAO;


public class MovieManager {

	private HashSet<Movie> movies;
	
	
	private static MovieManager instance;
	
	private MovieManager(){
		movies = new HashSet();
		for(Movie m : MovieDAO.getInstance().getAllMovies()){
			movies.add(m);
		}
	}
	
	public synchronized static MovieManager getInstance(){
		if(instance == null){
			instance = new MovieManager();
		}
		return instance;
	}
	/*
	 * ������� �� (�����) ���� (���� ����� ����������� ������).
	 */
	public synchronized void makeMovie(String title, String director, String writter, String pg_rating, String movieLength, String releaseDate, String awards, String resume, String posterLink){
		Movie m = new Movie(title, director, writter, pg_rating, movieLength, releaseDate, awards, resume, posterLink, 0, 0);
		movies.add(m);//������
		MovieDAO.getInstance().addMovie(m);// ������� � ������
	}
	
	 public synchronized HashSet<Movie> searchMovie(String title){
		 HashSet<Movie> searchResult = new HashSet<>();
			for (Movie movie : movies) {
				if(movie.getTitle().contains(title) || title.equals(movie.getTitle())){
					searchResult.add(movie);
				}
			}
			return searchResult;
    }
	 
	 public synchronized Movie getMovie(String title){
			for (Movie movie : movies) {
				if(movie.getTitle().contains(title) || title.equals(movie.getTitle())){
					return(movie);
				}
			}
			return null;
    }
	 
	 public synchronized void test(){
		 System.out.println("testing.......");
	 }
	 
	 public HashSet<Movie> getMovies() {
		return movies;
	}
	
}
