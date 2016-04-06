package DataSources;

import Models.Show;
import Scripts.DatabaseScripts;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Megan O'Connor <meo7507>
 */
public class ShowDataSourceH2 {

    public List<Show> getAllShows() throws SQLException{
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet resultSet = stmt.executeQuery("SELECT * from Show;");

        List<Show> shows = new ArrayList<Show>();

        while(resultSet.next()){
            int showID = resultSet.getInt("id");
            String showName = resultSet.getString("name");
            int startYear = resultSet.getInt("start_year");
            int endYear = resultSet.getInt("end_year");
            int rating = resultSet.getInt("rating");
            String summary = resultSet.getString("summary");

            List<String> genres = new ArrayList<>();
            Statement genreStatement = conn.createStatement();
            ResultSet genreSet = genreStatement.executeQuery("SELECT name FROM Genre WHERE show_id = " + showID +";");
            while(genreSet.next()) {
                genres.add(genreSet.getString("name"));
            }

            shows.add(new Show(showID, showName, startYear, endYear, rating, genres, summary));
        }

        return shows;
    }

    public Show getShow(int showID) throws SQLException{
        List<Show> shows = getAllShows();
        for(Show s : shows){
            if(s.getShowId() == showID){
                return s;
            }
        }
        return null;
    }

    public Show getShow(String showName) throws SQLException{
        List<Show> shows = getAllShows();
        for(Show s : shows){
            if(s.getShowName().equals(showName)){
                return s;
            }
        }
        return null;
    }

    public void deleteShow(int showID) throws SQLException{
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        stmt.execute("DELETE FROM Show WHERE id = " + showID + ";");
    }

    public void deleteShow(String showName) throws SQLException{
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        stmt.execute("DELETE FROM Show WHERE name = " + showName + ";");
    }

    public void addShow(Show show) throws SQLException{
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();

        stmt.execute("INSERT INTO Show (name, start_year, end_year, rating, summary) VALUES ("
                + show.getShowName() + ", " + show.getStartYear() + ", " +
                show.getEndYear() + ", " + show.getRating() + ", " + show.getSummary() + ");");

        List<String> genres = show.getGenres();
        for(String name : genres){ //not sure what to put for genre_id since auto increment??
            stmt.execute("INSERT INTO Genre (name, movie_id, show_id) VALUES (" + name
                + ", null, " + show.getShowId() + ");");
        }
    }





}
