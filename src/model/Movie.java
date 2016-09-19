package model;

public class Movie {

//	enum Pg_Rating {G,PG,PG_13,R,NC_17}
	private String pg_rating;
	
	private String title;
	private String director;
	private String writter;
	private String movieLength;
	private String releaseDate;
	private String awards;
	private String resume;
	private String posterLink;
	private double movieRating;
	private int numberOfRates = 0;
	
	
	public Movie(String title, String director, String writter, String pg_rating, String movieLength,
			String releaseDate, String awards, String resume, String posterLink, double movieRating, int numberOfRates) {
		this.title = title;
		this.director = director;
		this.writter = writter;
		this.pg_rating = pg_rating;
		this.movieLength = movieLength;
		this.releaseDate = releaseDate;
		this.awards = awards;
		this.resume = resume;
		this.movieRating = movieRating;
		this.numberOfRates = numberOfRates;
		this.posterLink = posterLink;
	}


	public String getTitle() {
		return title;
	}


	public String getDirector() {
		return director;
	}


	public String getWritter() {
		return writter;
	}


	public String getPg_rating() {
		return pg_rating;
	}


	public String getMovieLength() {
		return movieLength;
	}


	public String getReleaseDate() {
		return releaseDate;
	}


	public String getAwards() {
		return awards;
	}


	public String getResume() {
		return resume;
	}


	public double getMovieRating() {
		return movieRating;
	}


	public int getNumberOfRates() {
		return numberOfRates;
	}
	
	public String getPosterLink() {
		return posterLink;
	}


	public void setNumberOfRates(int numberOfRates) {
		this.numberOfRates = numberOfRates;
	}


	public void setMovieRating(double movieRating) {
		this.movieRating = movieRating;
	}
	
	
	
}
