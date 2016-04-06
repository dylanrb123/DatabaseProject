package DataSources;

import DataAccessObjects.SeasonDao;
import Models.Season;
import Scripts.DatabaseScripts;
import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Grant Salk <gas7933@rit.edu>
 *         3/16/2016
 */
public class SeasonDataSourceH2 implements SeasonDao {

    @Override
    public List<Season> getAllSeasons() throws SQLException {
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet resultSet = stmt.executeQuery("SELECT * from Season;");

        List<Season> seasons = new ArrayList<>();

        while(resultSet.next()) {
            int seasonId = resultSet.getInt("id");
            int seasonNumber = resultSet.getInt("number");
            String startDate = resultSet.getString("start_date");
            String[] startDateList = startDate.split("-");
            DateTime startDateFinal = new DateTime(Integer.parseInt(startDateList[0]),
                    Integer.parseInt(startDateList[1]), Integer.parseInt(startDateList[2]), 0, 0);
            String endDate = resultSet.getString("end_date");
            String[] endDateList = endDate.split("-");
            DateTime endDateFinal = new DateTime(Integer.parseInt(endDateList[0]),
                    Integer.parseInt(endDateList[1]), Integer.parseInt(endDateList[2]), 0, 0);
            String posterUrl = resultSet.getString("poster_url");

            seasons.add(new Season(seasonId, seasonNumber, startDateFinal, endDateFinal, posterUrl));
        }

        return seasons;
    }

    @Override
    public Season getSeason(int seasonId) throws SQLException {
        List<Season> seasons = getAllSeasons();
        for(Season s : seasons) {
            if(s.getSeasonId() == seasonId) return s;
        }
        return null;
    }

    @Override
    public Season getSeason(int seasonNumber, DateTime startDate) throws SQLException {
        List<Season> seasons = getAllSeasons();
        for(Season s : seasons) {
            if(s.getSeasonNumber() == seasonNumber ) return s;

        }
        return null;
    }

    @Override
    public void deleteSeason(int seasonId) throws SQLException {
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        stmt.execute("DELETE FROM Season WHERE id = " + seasonId + ";");
    }

    @Override
    public void deleteSeason(int seasonNumber, DateTime startDate) throws SQLException {
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();

        DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
        String startDateString = fmt.print(startDate);

        stmt.execute("DELETE FROM Season WHERE number = " + seasonNumber + " AND start_date = " + startDateString +
                ";");
    }

    @Override
    public void addSeason(Season season) throws SQLException{
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();

        stmt.execute("INSERT INTO Season " +
                "(id, number, start_date, end_date, poster_url) " +
                "VALUES (" + season.getSeasonId() + ", " + season.getSeasonNumber() + ", " + season.getStartDate() +
                ", " + season.getEndDate() + ", " + season.getPosterURL() + ")");

    }
}
