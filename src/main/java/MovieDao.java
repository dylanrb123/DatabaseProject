import java.util.List;

/**
 * Dylan Bannon <drb2857@rit.edu>
 */
public interface MovieDao {
    List<Movie> getAllMovies();
    Movie getMovie(int movieId);
    void updateMovie(int movieId);
    void deleteMovie(int movieId);
}
