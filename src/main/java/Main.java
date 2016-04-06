/**
 * Dylan Bannon <drb2857@rit.edu>
 */

import static spark.Spark.*;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import java.io.FileReader;

public class Main {

    private ScriptEngine se;

    public static void main(String[] args) throws Throwable {
        // Sample route for webserver
        // get("/hello", (req, res) -> "Hello World");
        Main test = new Main();
        test.render("hello");
        test.render("hello world");


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
