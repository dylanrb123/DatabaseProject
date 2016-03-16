package DataAccessObjects;

import Models.Movie;
import org.joda.time.DateTime;

import java.util.List;

/**
 * Dylan Bannon <drb2857@rit.edu>
 */
public interface MovieDao {
    List<Movie> getAllMovies();
    Movie getMovie(int movieId);
    Movie getMovie(String name, DateTime releaseDate);
    void updateMovie(int movieId);
    void updateMovie(String name, DateTime releaseDate);
    void deleteMovie(int movieId);
    void deleteMovie(String name, DateTime releaseDate);
}
