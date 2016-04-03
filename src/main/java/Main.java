/**
 * Dylan Bannon <drb2857@rit.edu>
 */

import static spark.Spark.*;
import java.sql.*;

public class Main {
    public static void main(String[] args) throws Exception {
        // Sample route for webserver
        get("/hello", (req, res) -> "Hello World");

    }
}
