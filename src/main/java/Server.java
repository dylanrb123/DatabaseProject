/**
 * Dylan Bannon <drb2857@rit.edu>
 */

import DataAccessObjects.MovieDao;
import DataSources.MovieDataSourceH2;
import Enums.MpaaRating;
import Models.Movie;
import Models.UserReview;
import j2html.TagCreator;
import org.apache.commons.io.FileUtils;
import org.joda.time.DateTime;
import org.joda.time.Duration;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

import static spark.Spark.*;
import static j2html.TagCreator.*;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import java.io.File;
import java.io.FileReader;
import java.nio.charset.Charset;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.net.URL;
import java.net.URLClassLoader;

//this is here to read the inserts into the movie table.
//Can be removed later when a more elegant solution to adding movies exists.
import Scripts.DatabaseScripts;

public class Server {

    private ScriptEngine se;

    public static void main(String[] args) {
//         Sample route for web server
//         get("/hello", (req, res) -> "Hello World");
//        Server test = new Server();
//        test.render("hello");
//        test.render("hello world");

        MovieDao movieDao = new MovieDataSourceH2();
        List<String> genres = new ArrayList<>();
        genres.add("Action");
        genres.add("Romance");

        try {
            DatabaseScripts.insertMovies();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        externalStaticFileLocation("src/main/web-app");

        // Allow cross site access
        before((req, res) -> {
            res.header("Access-Control-Allow-Origin", "*");
            res.header("Access-Control-Request-Method", "*");
            res.header("Access-Control-Allow-Headers", "*");
        });

        // route for homepage
        get("/", (req, res) -> FileUtils.readFileToString(new File("src/main/web-app/index.html"), Charset.defaultCharset()));

        // route to add movie
        post("/add-movie", (req, res) -> {
                String movieName = req.queryParams("movie-name");
                String runtimeString = req.queryParams("movie-runtime");
                String releaseDateString = req.queryParams("movie-release");
                String ratingString = req.queryParams("movie-rating");
                String genresString = req.queryParams("movie-genres");
                String summary = req.queryParams("movie-summary");
                String trailerUrl = req.queryParams("movie-trailer-url");
                String posterUrl = req.queryParams("movie-poster-url");

                DateTimeFormatter fmt = DateTimeFormat.forPattern("HH:mm");
                Duration runtime = new Duration(fmt.parseMillis(runtimeString));

                fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
                DateTime releaseDate = fmt.parseDateTime(releaseDateString);

                List<String> genresList = Arrays.asList(genresString.split(","));

                MpaaRating rating = MpaaRating.valueOf(ratingString);

                Movie newMovie = new Movie(0, movieName, runtime, releaseDate, rating, genresList, summary, trailerUrl, posterUrl, new ArrayList<>());
                movieDao.addMovie(newMovie);

                res.status(200);
                res.redirect("/movies");
                return res;
            }
        );
        post("/delete-movie", (req, res) -> {
            if (req.queryParams("delete-movie") != null) {
                movieDao.deleteMovie(Integer.parseInt(req.queryParams("delete-movie")));
            }
            res.status(200);
            res.redirect("/movies");
            return res;
        });

        get("/api/movies", (req, res) -> movieDao.getAllMovies(), JsonUtil.json());

        get("/api/movies/:id", (req, res) -> {
            String id = req.params(":id");
            Movie movie = movieDao.getMovie(Integer.parseInt(id));
            if(movie != null) return movie;
            res.status(400);
            return new ResponseError("No movie with ID %s found", id);
        }, JsonUtil.json());

        get("/api/movies/reviews/:id", (req, res) -> {
            int id = Integer.parseInt(req.params(":id"));
            List<UserReview> reviews = movieDao.getMovie(id).getReviews();
            if(reviews != null) return reviews;
            return new ResponseError("No reviews found for movie %s", req.params(":id"));
        }, JsonUtil.json());

        post("/api/movies/reviews/:id", (req, res) -> {
            int movieId = Integer.parseInt(req.params("id"));
            long reviewId = Long.parseLong(req.queryParams("reviewId"));
            String userName = req.queryParams("username").replace("'", "''");
            int starRating = Integer.parseInt(req.queryParams("starRating"));
            DateTime reviewDate = new DateTime(Long.parseLong(req.queryParams("date")));
            String title = req.queryParams("title").replace("'", "''");
            String body = req.queryParams("body").replace("'", "''");

            UserReview newReview = new UserReview(reviewId, userName, starRating, reviewDate, title, body);
            movieDao.addReview(movieId, newReview);

            res.status(200);
            return movieDao.getMovie(movieId).getReviews();
        }, JsonUtil.json());

        post("/api/movies", (req, res) -> {
            String movieName = req.queryParams("movie-name");
            String runtimeString = req.queryParams("movie-runtime");
            String releaseDateString = req.queryParams("movie-release");
            String ratingString = req.queryParams("movie-rating");
            String genresString = req.queryParams("movie-genres");
            String summary = req.queryParams("movie-summary");
            String trailerUrl = req.queryParams("movie-trailer-url");
            String posterUrl = req.queryParams("movie-poster-url");

            System.out.println(movieName);
            System.out.println(runtimeString);
            System.out.println(releaseDateString);
            System.out.println(ratingString);
            System.out.println(genresString);
            System.out.println(summary);
            System.out.println(trailerUrl);
            System.out.println(posterUrl);

            DateTimeFormatter fmt = DateTimeFormat.forPattern("HH:mm");
            Duration runtime = new Duration(fmt.parseMillis(runtimeString));

            fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
            DateTime releaseDate = fmt.parseDateTime(releaseDateString);

            List<String> genresList = Arrays.asList(genresString.split(","));

            MpaaRating rating = MpaaRating.valueOf(ratingString);

            Movie newMovie = new Movie(0, movieName, runtime, releaseDate, rating, genresList, summary, trailerUrl, posterUrl, new ArrayList<>());
            movieDao.addMovie(newMovie);

            res.status(200);
            return res;
        });
        delete("/api/movies/:id", (req, res) -> {
            movieDao.deleteMovie(Integer.parseInt(req.params(":id")));
            res.status(200);
            return res;
        });

        after("/api/*", (req, res) -> res.type("application/json"));



    }
}
