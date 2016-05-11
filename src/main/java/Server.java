/**
 * Dylan Bannon <drb2857@rit.edu>
 */

import DataAccessObjects.MovieDao;
import DataAccessObjects.ShowDao;
import DataSources.MovieDataSourceH2;
import DataSources.ShowDataSourceH2;
import Models.Movie;
import Models.UserReview;
import org.apache.commons.io.FileUtils;
import org.joda.time.DateTime;

import static spark.Spark.*;
import java.io.File;
import java.nio.charset.Charset;
import java.sql.SQLException;
import java.util.List;

//this is here to read the inserts into the movie table.
//Can be removed later when a more elegant solution to adding movies exists.
import Scripts.DatabaseScripts;

public class Server {

    public static void main(String[] args) {

        // instantiate the data access objects
        MovieDao movieDao = new MovieDataSourceH2();
        ShowDao showDao = new ShowDataSourceH2();

        try {
            DatabaseScripts.insertData();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // serve web app static files
        externalStaticFileLocation("src/main/web-app");

        // Allow cross site access
        before((req, res) -> {
            res.header("Access-Control-Allow-Origin", "*");
            res.header("Access-Control-Request-Method", "*");
            res.header("Access-Control-Allow-Headers", "*");
        });

        // route for homepage
        get("/", (req, res) -> FileUtils.readFileToString(new File("src/main/web-app/index.html"), Charset.defaultCharset()));

        // get all movies
        get("/api/movies", (req, res) -> movieDao.getAllMovies(), JsonUtil.json());

        // get specific movie
        get("/api/movies/:id", (req, res) -> {
            String id = req.params(":id");
            Movie movie = movieDao.getMovie(Integer.parseInt(id));
            if(movie != null) return movie;
            res.status(400);
            return new ResponseError("No movie with ID %s found", id);
        }, JsonUtil.json());

        // get all reviews for a movie
        get("/api/movies/reviews/:id", (req, res) -> {
            int id = Integer.parseInt(req.params(":id"));
            List<UserReview> reviews = movieDao.getMovie(id).getReviews();
            if(reviews != null) return reviews;
            return new ResponseError("No reviews found for movie %s", req.params(":id"));
        }, JsonUtil.json());

        // add a review to a movie
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

        // get all TV shows
        get("/api/shows", (req, res) -> showDao.getAllShows(), JsonUtil.json());

        // set all API calls to return JSON
        after("/api/*", (req, res) -> res.type("application/json"));
    }
}
