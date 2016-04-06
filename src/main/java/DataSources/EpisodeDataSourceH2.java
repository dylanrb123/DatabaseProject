package DataSources;

import DataAccessObjects.EpisodeDao;
import Enums.MpaaRating;
import Models.Episode;
import Models.Movie;
import Scripts.DatabaseScripts;
import org.joda.time.DateTime;
import org.joda.time.Duration;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Dylan Bannon <drb2857@rit.edu>
 * @author Grant Salk <gas7933@rit.edu>
 *         3/16/2016
 */
public class EpisodeDataSourceH2 implements EpisodeDao {

    @Override
    public List<Episode> getAllEpisodes() throws SQLException {
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet resultSet = stmt.executeQuery("SELECT * from Movie");

        List<Episode> episodes = new ArrayList<>();

        while(resultSet.next()) {
            int episodeId = resultSet.getInt("id");
            String episodeName = resultSet.getString("name");
            int episodeNumber = resultSet.getInt("number");
            Duration length = new Duration(resultSet.getInt("length"));
            String airDate = resultSet.getString("air_date");
            String[] dateList = airDate.split("-");
            DateTime date = new DateTime(Integer.parseInt(dateList[0]), Integer.parseInt(dateList[1]),
                    Integer.parseInt(dateList[2]), 0, 0);
            String description = resultSet.getString("description");

            episodes.add(new Episode(episodeId, episodeName, episodeNumber, length, date, description));
        }

        return episodes;
    }

    @Override
    public Episode getEpisode(int episodeId) throws SQLException {
        List<Episode> episodes = getAllEpisodes();
        for(Episode e : episodes) {
            if(e.getEpisodeId() == episodeId) return e;
        }
        return null;
    }

    @Override
    public Episode getEpisode(String episodeName, DateTime airDate) throws SQLException {
        List<Episode> episodes = getAllEpisodes();
        for(Episode e : episodes) {
            if(e.getEpisodeName().equals(episodeName) && e.getAirDate().equals(airDate)) return e;

        }
        return null;
    }

    @Override
    public void deleteEpisode(int episodeId) throws SQLException {
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        stmt.execute("DELETE FROM Episode WHERE id = " + episodeId);
    }

    @Override
    public void deleteEpisode(String episodeName, DateTime airDate) throws SQLException {
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();

        DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
        String airDateString = fmt.print(airDate);

        stmt.execute("DELETE FROM Episode WHERE name = " + episodeName + " AND air_date = " + airDateString);
    }

    @Override
    public void addEpisode(Episode episode) throws SQLException{
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();

        stmt.execute("INSERT INTO Episode " +
                "(id, name, number, length, air_date, description) " +
                "VALUES (" + episode.getEpisodeId() + ", " + episode.getEpisodeName() + ", " +
                episode.getEpisodeNumber() + ", " + episode.getLength() + ", " + episode.getAirDate() + ", " +
                episode.getDescription() + ")");

    }
}
