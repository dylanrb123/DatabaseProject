package Scripts;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.*;

/**
 * @author Dylan Bannon <drb2857@rit.edu>
 *         3/16/2016
 */
public final class DatabaseScripts {

    private static Connection conn;
    private static final boolean DEBUG = true;

    private DatabaseScripts(){}

    public static void createConnection(String user, String password, String location) throws SQLException {
        try {
            Class.forName("org.h2.Driver");
        } catch(ClassNotFoundException e) {
            e.printStackTrace();
        }
        conn = DriverManager.getConnection("jdbc:h2:" + location, user, password);
        if(DEBUG) cleanDatabase();
    }

    public static Connection getConnection() {
        return conn;
    }

    public static void closeConnection() {
        try {
            conn.close();
        } catch(SQLException e) {
            e.printStackTrace();
        }
    }

    public static void createTables() throws SQLException {
        try {
            createConnection("", "", "~");
        } catch(SQLException e) {
            e.printStackTrace();
        }

        Statement stmt = conn.createStatement();
        System.out.println(System.getProperty("user.dir"));
        stmt.execute(readTableFile("src/main/java/db_tables.sql"));
        dumpTables();

    }

    private static String readTableFile(String location) {
        String tableScript = "";
        try {
            tableScript = new String(Files.readAllBytes(Paths.get(location)));
        } catch(IOException e) {
            e.printStackTrace();
        }
        return tableScript;
    }

    public static void cleanDatabase() {
        try {
            Statement stmt = conn.createStatement();
            stmt.execute("DROP ALL OBJECTS");
        } catch(SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String args[]) {
        try {
            createTables();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void dumpTables() {

        try {

            Statement stmt = conn.createStatement();
            ResultSet results = stmt.executeQuery("SCRIPT");
            while(results.next()) {
                System.out.println(results.getString(1));
            }
        } catch (SQLException e)  {
            e.printStackTrace();
        }



    }
}