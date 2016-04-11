/**
 * Dylan Bannon <drb2857@rit.edu>
 */

import DataAccessObjects.MovieDao;
import DataSources.MovieDataSourceH2;
import Enums.MpaaRating;
import Models.Movie;
import org.joda.time.DateTime;
import org.joda.time.Duration;

import static spark.Spark.*;
import static j2html.TagCreator.*;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import java.io.FileReader;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
            movieDao.addMovie(new Movie(0, "TEST: THE MOVIE", new Duration(1000000), new DateTime(1993, 12, 29, 0, 0, 0), MpaaRating.G, genres, "This is a movie about a test", "www.google.com", "www.youtube.com"));
            movieDao.addMovie(new Movie(0, "TEST2: RETURN OF THE TEST", new Duration(1000000), new DateTime(1993, 12, 29, 0, 0, 0), MpaaRating.G, genres, "This is a movie about a test", "www.google.com", "www.youtube.com"));
            List<Movie> movies = movieDao.getAllMovies();
            System.out.println(movies);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        get("/", (req, res) ->
        body().with(
                h1("This is a test"),
                div().with()
        ).render()
        );


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
