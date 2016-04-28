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
 * @author Samuel Hobson <sjh6674@rit.edu>
 *         3/16/2016
 */
public class MovieDataSourceH2 implements MovieDao {

    /* list of attributes for sql queries */
    private String attributes = " movie.id," +
                                " movie.name AS movie_name," +
                                " length," +
                                " genre.name AS genre_name," +
                                " release_date," +
                                " mpaa_rating," +
                                " summary," +
                                " trailer_url," +
                                " poster_url " ;


    /**
     * Create a list of movie objects from the given ResultSet
     *
     * @param   rs  An SQL ResultSet which contains movie information
     * @return  A list of Movie objects
     * @throws  SQLException if a needed column title is not found.
     */
    private List<Movie> createList(ResultSet rs) throws SQLException{
        List<Movie> movies = new ArrayList<>();

        while(rs.next()) {
            // Get first only the info needed for a comparison
            int id = rs.getInt("movie.id");
            String name = rs.getString("name");

            // Parse date string into DateTime object
            String date_str = rs.getString("release_date");
            String[] date_lst = date_str.split("-");
            DateTime date = new DateTime(Integer.parseInt(date_lst[0]),
                                         Integer.parseInt(date_lst[1]),
                                         Integer.parseInt(date_lst[2]),
                                         0,0);

            // If this movie already exists in the list, just add the genre
            int i = movies.indexOf( new Movie(id, name, null, date, null, null, null,null,null) );
            if(i >= 0){
                movies.get(i).addGenre( rs.getString("genre_name") );
                continue;
            }

            // Otherwise get the rest of the data
            Duration length = new Duration(rs.getInt("length"));
            MpaaRating rating = MpaaRating.valueOf(rs.getString("mpaa_rating"));
            String summary = rs.getString("Summary");
            String trailerUrl = rs.getString("trailer_url");
            String posterUrl = rs.getString("poster_url");

            // Genre
            List<String> genre_lst = new ArrayList<>();
            genre_lst.add(rs.getString("genre_name"));

            movies.add(new Movie(id, name, length, date, rating, genre_lst, summary, trailerUrl, posterUrl));
        }

        return movies;
    }


    /**
     * Execute the given SQL query
     *
     * @param  q The SQL query to carry out
     * @return The table as a ResultSet
     * @throws SQLException upon any SQL error
     */
    private ResultSet exeSQL(String q) throws SQLException{
        // Create SQL connection
        Connection conn = DatabaseScripts.getConnection();

        // Execute query
        Statement stmt = conn.createStatement();

        // Return result
        return stmt.executeQuery( q );
    }


    public List<Movie> getAllMovies() throws SQLException {
        // Prepare SQL query
        String q = "SELECT"+attributes+
                   "FROM movie INNER JOIN genre ON movie.id=movie_id";

        // SQL Sequence
        ResultSet resultSet = exeSQL(q);

        // Parse table to a list
        return createList(resultSet);
    }


    @Override
    public Movie getMovie(int movieId) throws SQLException {
        // Prepare SQL query
        String q = "SELECT"+attributes+
                   "FROM movie INNER JOIN genre on movie.id=movie_id " +
                   "WHERE movie.id = %d;";

        // SQL Sequence
        ResultSet resultSet = exeSQL( String.format(q, movieId) );

        // Parse table to a list
        List<Movie> m = createList(resultSet);

        // Since this should only be one movie, return first index
        if(m.size() > 0) return m.get(0);
        // return null if not found
        return null;
    }

    @Override
    public Movie getMovie(String name, DateTime releaseDate) throws SQLException {
        // Convert releaseDate to string
        DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
        String releaseDateString = fmt.print(releaseDate);

        // Prepare query
        String q = "SELECT"+attributes+
                   "FROM movie INNER JOIN genre on movie.id=movie_id" +
                   "WHERE release_date=\"%s\" AND movie_name=\"%s\";";

        // SQL sequence
        ResultSet resultSet = exeSQL( String.format(q, releaseDateString, name) );

        // Parse table to a list
        List<Movie> m = createList(resultSet);

        // Since this should only be one movie, return first index
        return m.get(0);
    }

    @Override
    public void deleteMovie(int movieId) throws SQLException {
        // Prepare query
        String q = "DELETE FROM movie WHERE id = %d;";

        // SQL sequence
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        stmt.execute( String.format(q, movieId) );
    }

    @Override
    public void deleteMovie(String name, DateTime releaseDate) throws SQLException {
        // Prepare query
        String q = "DELETE FROM movie " +
                "WHERE name=\"%s\" AND release_date=\"%s\";";

        // Convert Release Date to string
        DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
        String releaseDateString = fmt.print(releaseDate);

        // SQL sequence
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        stmt.execute( String.format(q, name, releaseDateString) );
    }

    @Override
    public void addMovie(Movie movie) throws SQLException{
        // Prepare Queries
        // Insert into movie
        String q1 = "INSERT INTO MOVIE " +
                    "(name, length, release_date, mpaa_rating, summary, trailer_url, poster_url) " +
                    "VALUES ('%s', %d, '%s', '%s', '%s', '%s', '%s');";

        // Insert into genre
        String q2 = "INSERT INTO GENRE " +
                    "(name, movie_id, show_id) " +
                    "VALUES ('%s', %d, NULL);";

        // Get movie id
        String q3 = "SELECT id FROM Movie WHERE name='%s' AND release_date='%s';";

        // Convert movie information to proper data types
        String name = movie.getMovieName();
        int length = (int)movie.getRuntime().getMillis();
        String rating = movie.getRating().toString();
        String summary = movie.getSummary();
        String trailerURL = movie.getTrailerUrl();
        String posterURL = movie.getPosterUrl();

        DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
        String releaseDate = fmt.print( movie.getReleaseDate() );

        // Execute INSERT INTO MOVIE query
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        stmt.execute(String.format(q1, name, length, releaseDate, rating, summary, trailerURL, posterURL));

        // Get the movie ID generated by the table
        ResultSet rs = exeSQL( String.format(q3, name, releaseDate) );
        rs.next();
        int movieID = rs.getInt("id");

        // Execute INSERT INTO GENRE query for every genre this movie has
        for(String genre : movie.getGenres()){
            Statement stmt2 = conn.createStatement();
            stmt2.execute(String.format(q2, genre, movieID) );
        }
    }

    @Override
    public List<Movie> getByGenre(String genre) throws SQLException{
        // Prepare Query
        String q = "SELECT"+attributes+
                   "FROM movie INNER JOIN genre on movie.id=movie_id" +
                   "WHERE genre_name ='%s';";

        // SQL sequence
        ResultSet resultSet = exeSQL( String.format(q, genre) );

        // Create and Return a list from the results
        return createList(resultSet);
    }

    @Override
    public List<Movie> getByMPAA(MpaaRating mpaa_rating) throws SQLException{
        // Prepare query
        String q = "SELECT"+attributes+
                   "FROM movie INNER JOIN genre on movie.id=movie_id" +
                   "WHERE mpaa_rating ='%s';";

        // Convert rating to string
        String rating = mpaa_rating.toString();

        // SQL stuff
        ResultSet resultSet = exeSQL( String.format(q, rating) );

        // Create and Return a list from the results
        return createList(resultSet);
    }

    @Override
    public List<Movie> getByRelDate(DateTime relDate) throws SQLException{
        // Prepare query
        String q = "SELECT"+attributes+
                   "FROM movie INNER JOIN genre on movie.id=movie_id" +
                   "WHERE release_date='%s';";

        // Convert releaseDate to string
        DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
        String releaseDateString = fmt.print(relDate);

        // SQL sequence
        ResultSet resultSet = exeSQL(  String.format(q, releaseDateString) );

        // Create and Return a list from the results
        return createList(resultSet);
    }


}
