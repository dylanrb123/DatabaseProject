/**
 * Dylan Bannon <drb2857@rit.edu>
 */

//import static spark.Spark.*;
import java.sql.*;

public class Main {
    public static void main(String[] args) throws Exception {
        //get("/hello", (req, res) -> "Hello World");
        Class.forName("org.h2.Driver");
        Connection conn = DriverManager.getConnection("jdbc:h2:~/test", "sa", "");
        System.out.println(conn);
        conn.close();
    }
}
