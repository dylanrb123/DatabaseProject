package DataSources;

import DataAccessObjects.MovieDao;
import Models.Movie;
import org.joda.time.DateTime;

import java.util.List;

/**
 * @author Dylan Bannon <drb2857@rit.edu>
 *         3/16/2016
 */
public class MovieDataSourceH2 implements MovieDao {
    @Override
    public List<Movie> getAllMovies() {
        return null;
    }

    @Override
    public Movie getMovie(int movieId) {
        return null;
    }

    @Override
    public Movie getMovie(String name, DateTime releaseDate) {
        return null;
    }

    @Override
    public void updateMovie(int movieId) {

    }

    @Override
    public void updateMovie(String name, DateTime releaseDate) {

    }

    @Override
    public void deleteMovie(int movieId) {

    }

    @Override
    public void deleteMovie(String name, DateTime releaseDate) {

    }
}
