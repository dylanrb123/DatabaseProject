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
    }

    public static Connection getConnection() throws SQLException {
        if(conn == null) {
            if(DEBUG) {
                createTables();
            }

        }
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
            createConnection("", "", "~/test");
        } catch(SQLException e) {
            e.printStackTrace();
        }
        if(DEBUG) cleanDatabase();
        Statement stmt = conn.createStatement();
        stmt.execute(readSQLFile("src/main/java/db_tables.sql"));
    }

    public static void insertData() throws SQLException {
        try {
            createConnection("", "", "~/test");
        } catch(SQLException e) {
            e.printStackTrace();
        }
        createTables();
        Statement stmt = conn.createStatement();
        stmt.execute(readSQLFile("src/main/java/movietabledata.sql") +
                    readSQLFile("src/main/java/tvtabledata.sql"));
    }

    private static String readSQLFile(String location) {
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
