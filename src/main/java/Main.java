/**
 * Dylan Bannon <drb2857@rit.edu>
 */

import DataAccessObjects.MovieDao;
import DataSources.MovieDataSourceH2;
import Enums.MpaaRating;
import Models.Movie;
import j2html.TagCreator;
import org.joda.time.DateTime;
import org.joda.time.Duration;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

import static spark.Spark.*;
import static j2html.TagCreator.*;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import java.io.FileReader;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

//this is here to read the inserts into the movie table.
//Can be removed later when a more elegant solution to adding movies exists.
import Scripts.DatabaseScripts;

public class Main {

    private ScriptEngine se;

    public static void main(String[] args) {
//         Sample route for web server
//         get("/hello", (req, res) -> "Hello World");
//        Main test = new Main();
//        test.render("hello");
//        test.render("hello world");

        MovieDao movieDao = new MovieDataSourceH2();
        List<String> genres = new ArrayList<>();
        genres.add("Action");
        genres.add("Romance");

        try {
            DatabaseScripts.insertData();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // route to get movies page
        get("/movies", (req, res) -> {
                    List<Movie> moviesTemp;
                    try {
                        moviesTemp = movieDao.getAllMovies();
                    } catch (SQLException e) {
                        e.printStackTrace();
                        moviesTemp = new ArrayList<>();
                    }
                    final List<Movie> movies = moviesTemp;
                    return body().with(
                            h1("All Movies"),
                            div().with(
                                    movies.stream().map((movie) ->
                                            div().with(
                                                    h2(movie.getMovieName()),
                                                    h3(Integer.toString(movie.getMovieID())),
                                                    p(movie.getSummary()),
                                                    h3("Genres: "),
                                                    ul().with(movie.getGenres().stream().map(TagCreator::li).collect(Collectors.toList())
                                                    )
                                            )
                                    ).collect(Collectors.toList())
                            ),
                            h2("Add movie"),
                            form().withMethod("post").withAction("/add-movie").withId("movie-form").with(
                                    input().withType("text").withName("movie-name").withPlaceholder("Title").isRequired(),
                                    input().withType("date").withName("movie-release").withPlaceholder("Release Date").isRequired(),
                                    input().withType("text").withName("movie-genres").withPlaceholder("Genres (comma sep)").isRequired(),
                                    select().withName("movie-rating").with(
                                            Arrays.asList(MpaaRating.values()).stream().map(genre ->
                                                    div().with(
                                                            option().withValue(genre.toString()).withText(genre.toString())
                                                    )
                                            ).collect(Collectors.toList())
                                    ),
                                    input().withType("time").withName("movie-runtime").withPlaceholder("Runtime").isRequired(),
                                    input().withType("url").withName("movie-trailer-url").withPlaceholder("Trailer URL").isRequired(),
                                    input().withType("url").withName("movie-poster-url").withPlaceholder("Poster URL").isRequired(),
                                    textarea().withName("movie-summary").withName("movie-summary").withPlaceholder("Summary").attr("form", "movie-form").isRequired(),
                                    input().withType("submit").withValue("Submit")
                            ),
                            h2("Delete movie"),
                            form().withMethod("post").withAction("/delete-movie").withId("delete-movie").with(
                                    label().withText("Movie to delete: "),
                                    select().withName("delete-movie").with(
                                            movies.stream().map(movie ->
                                                div().with(
                                                        option().withValue(Integer.toString(movie.getMovieID())).withText(movie.getMovieName() + ": " + movie.getReleaseDateString())
                                                )
                                            ).collect(Collectors.toList())
                                    ),
                                    input().withType("submit").withValue("Submit")
                            )
                    ).render();
                }
        );

        // route for homepage
        get("/", (req, res) ->
                body().with(
                        a("All movies").withHref("/movies")
                )
        );

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

                Movie newMovie = new Movie(0, movieName, runtime, releaseDate, rating, genresList, summary, trailerUrl, posterUrl);
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




    }

    public Main() throws Throwable {
        ScriptEngineManager sem = new ScriptEngineManager();
        se = sem.getEngineByName("nashorn");

        se.eval("var global = this");
        se.eval(new FileReader("node_modules/react/dist/react.js"));

        String component =
                "var MyComponent = React.createClass({" +
                        "	render: function() {" +
                        "		return React.DOM.div(null, this.props.text)" +
                        "	}" +
                        "});";
        se.eval(component);
    }

    public void render(String text) throws Throwable {
        String render =
                "React.renderToString(React.createFactory(MyComponent)({" +
                        "text: '" + text + "'" +
                        "}))";
        System.out.println(se.eval(render));
    }

}
