package Models;

import Enums.MpaaRating;
import org.joda.time.DateTime;
import org.joda.time.Duration;
import sun.util.resources.cldr.aa.CurrencyNames_aa;

import java.util.List;

/**
 * Dylan Bannon <drb2857@rit.edu>
 */
public class Movie {
    private int movieID;
    private String movieName;
    private Duration runtime;
    private DateTime releaseDate;
    private MpaaRating rating;
    private List<String> genres;
    private String summary;
    private String trailerUrl;
    private String posterUrl;

    public Movie(int movieID, String movieName, Duration runtime, DateTime releaseDate, MpaaRating rating,
                 List<String> genres, String summary, String trailerUrl, String posterUrl) {
        this.movieID = movieID;
        this.movieName = movieName;
        this.runtime = runtime;
        this.releaseDate = releaseDate;
        this.rating = rating;
        this.genres = genres;
        this.summary = summary;
        this.trailerUrl = trailerUrl;
        this.posterUrl = posterUrl;
    }

    public int getMovieID() {
        return movieID;
    }

    public void setMovieID(int movieID) {
        this.movieID = movieID;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public Duration getRuntime() {
        return runtime;
    }

    public void setRuntime(Duration runtime) {
        this.runtime = runtime;
    }

    public DateTime getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(DateTime releaseDate) {
        this.releaseDate = releaseDate;
    }

    public MpaaRating getRating() {
        return rating;
    }

    public void setRating(MpaaRating rating) {
        this.rating = rating;
    }

    public List<String> getGenres() {
        return genres;
    }

    public void addGenre(String genre) { genres.add(genre); }

    public void setGenres(List<String> genres) {
        this.genres = genres;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getTrailerUrl() {
        return trailerUrl;
    }

    public void setTrailerUrl(String trailerUrl) {
        this.trailerUrl = trailerUrl;
    }

    public String getPosterUrl() {
        return posterUrl;
    }

    public void setPosterUrl(String posterUrl) {
        this.posterUrl = posterUrl;
    }

    @Override
    public boolean equals(Object o) {
        Movie m;
        if(o instanceof Movie) m = (Movie) o;
        else return false;
        // movies are equal if they have the same ID or same name and release date
        return this.getMovieID() == m.getMovieID() ||
                (this.getMovieName().equals(m.getMovieName()) && this.getReleaseDate().equals(m.getReleaseDate()));
    }
}
