package DataAccessObjects;

import Models.Movie;
import org.joda.time.DateTime;

import java.sql.SQLException;
import java.util.List;

/**
 * Dylan Bannon <drb2857@rit.edu>
 */
public interface MovieDao {
    List<Movie> getAllMovies() throws SQLException;
    Movie getMovie(int movieId) throws SQLException;
    Movie getMovie(String name, DateTime releaseDate) throws SQLException;
    void deleteMovie(int movieId) throws SQLException;
    void deleteMovie(String name, DateTime releaseDate) throws SQLException;
    void addMovie(Movie movie);
}
