package DataSources;

import DataAccessObjects.MovieDao;
import Enums.MpaaRating;
import Models.Movie;
import Scripts.DatabaseScripts;
import org.joda.time.DateTime;
import org.joda.time.Duration;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Dylan Bannon <drb2857@rit.edu>
 * @author Grant Salk <gas7933@rit.edu>
 *         3/16/2016
 */
public class MovieDataSourceH2 implements MovieDao {

    @Override
    public List<Movie> getAllMovies() throws SQLException {
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet resultSet = stmt.executeQuery("SELECT * from Movie;");

        List<Movie> movies = new ArrayList<>();

        while(resultSet.next()) {
            int movieId = resultSet.getInt("id");
            String movieName = resultSet.getString("name");
            Duration length = new Duration(resultSet.getInt("length"));
            String releaseDate = resultSet.getString("release_date");
            String[] dateList = releaseDate.split("-");
            DateTime date = new DateTime(Integer.parseInt(dateList[0]), Integer.parseInt(dateList[1]),
                    Integer.parseInt(dateList[2]), 0, 0);
            MpaaRating rating = MpaaRating.valueOf(resultSet.getString("mpaa_rating"));
            String summary = resultSet.getString("summary");
            String trailerUrl = resultSet.getString("trailer_url");
            String posterUrl = resultSet.getString("poster_url");

            List<String> genres = new ArrayList<>();
            Statement genreStatement = conn.createStatement();
            ResultSet genreSet = genreStatement.executeQuery("SELECT name FROM Genre WHERE movie_id = " + movieId +
                    ";");
            while(genreSet.next()) {
                genres.add(genreSet.getString("name"));
            }

            movies.add(new Movie(movieId, movieName, length, date, rating, genres, summary, trailerUrl, posterUrl));
        }

        return movies;
    }

    @Override
    public Movie getMovie(int movieId) throws SQLException {
        List<Movie> movies = getAllMovies();
        for(Movie m : movies) {
            if(m.getMovieID() == movieId) return m;
        }
        return null;
    }

    @Override
    public Movie getMovie(String name, DateTime releaseDate) throws SQLException {
        List<Movie> movies = getAllMovies();
        for(Movie m : movies) {
            if(m.getMovieName().equals(name) && m.getReleaseDate().equals(releaseDate)) return m;

        }
        return null;
    }

    @Override
    public void deleteMovie(int movieId) throws SQLException {
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        stmt.execute("DELETE FROM Movie WHERE id = " + movieId + ";");
    }

    @Override
    public void deleteMovie(String name, DateTime releaseDate) throws SQLException {
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();

        DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
        String releaseDateString = fmt.print(releaseDate);

        stmt.execute("DELETE FROM Movie WHERE name = " + name + " AND release_date = " + releaseDateString + ";");
    }

    @Override
    public void addMovie(Movie movie) throws SQLException{
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        String sql = "INSERT INTO Movie " +
                "(name, length, release_date, mpaa_rating, summary, trailer_url, poster_url) " +
                "VALUES ('" + movie.getMovieName() + "', " + movie.getRuntime().getStandardSeconds() + ", '" + movie.getReleaseDateString() + "'" +
                ", '" + movie.getRating() + "', '" + movie.getSummary() + "', '" + movie.getTrailerUrl() + "', '" +
                movie.getPosterUrl() + "');";
        System.out.println(sql);
        stmt.execute(sql);

        List<String> genres = movie.getGenres();

        for(String genreName : genres){
            stmt.execute("INSERT INTO Genre " +
                        "(name, movie_id, show_id) " +
                        "VALUES (" + genreName + ", " + movie.getMovieID() + ", " + null + ");");
        }

    }
}
