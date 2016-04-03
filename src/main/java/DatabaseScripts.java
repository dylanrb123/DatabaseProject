
import java.sql.*;

/**
 * @author Dylan Bannon <drb2857@rit.edu>
 *         3/16/2016
 */
public final class DatabaseScripts {
    private DatabaseScripts(){};

    public static Connection getConnection(String user, String password, String location) throws SQLException {
        try {
            Class.forName("org.h2.Driver");
        } catch(ClassNotFoundException e) {
            e.printStackTrace();
        }
        return DriverManager.getConnection("jdbc:h2:" + location, user, password);
    }
}
