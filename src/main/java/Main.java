/**
 * Dylan Bannon <drb2857@rit.edu>
 */

import static spark.Spark.*;
import java.sql.*;

public class Main {
    public static void main(String[] args) throws Exception {
        // Sample route for webserver
        get("/hello", (req, res) -> "Hello World");

        // sample DB connection
        Class.forName("org.h2.Driver");
        Connection conn = DriverManager.getConnection("jdbc:h2:~/test", "sa", "");
        System.out.println(conn);
        conn.close();
    }
}
