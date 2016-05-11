package DataSources;

import DataAccessObjects.ShowDao;
import Models.Episode;
import Models.Season;
import Models.Show;
import Scripts.DatabaseScripts;
import org.joda.time.DateTime;
import org.joda.time.Duration;
import org.joda.time.Period;
import org.joda.time.format.*;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Megan O'Connor <meo7507>
 */
public class ShowDataSourceH2 implements ShowDao {

    public List<Show> getAllShows() throws SQLException{
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet resultSet = stmt.executeQuery("SELECT * from Show;");

        List<Show> shows = new ArrayList<>();

        while(resultSet.next()){
            int showID = resultSet.getInt("id");
            String showName = resultSet.getString("name");
            int startYear = resultSet.getInt("start_year");
            int endYear = resultSet.getInt("end_year");
            String rating = resultSet.getString("rating");
            String summary = resultSet.getString("summary");

            List<String> genres = new ArrayList<>();
            Statement genreStatement = conn.createStatement();
            ResultSet genreSet = genreStatement.executeQuery("SELECT name FROM Genre WHERE show_id = " + showID +";");
            while(genreSet.next()) {
                genres.add(genreSet.getString("name"));
            }

            List<Season> seasons = new ArrayList<>();
            Statement seasonRelationStatement = conn.createStatement();
            ResultSet seasonRelationSet = seasonRelationStatement.executeQuery(String.format("SELECT season_id FROM show_season WHERE show_id = %d", showID));
            while(seasonRelationSet.next()) {
                int seasonId = seasonRelationSet.getInt("season_id");
                Statement seasonStatement = conn.createStatement();
                ResultSet seasonSet = seasonStatement.executeQuery(String.format("SELECT * from Season WHERE id = %d", seasonId));
                while(seasonSet.next()) {
                    int seasonNumber = seasonSet.getInt("number");
                    String startDateString = seasonSet.getString("start_date");
                    String endDateString = seasonSet.getString("end_date");
                    String posterUrl = seasonSet.getString("poster_url");

                    DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
                    DateTime startDate = fmt.parseDateTime(startDateString);
                    DateTime endDate = fmt.parseDateTime(endDateString);

                    Statement episodeRelationStatement = conn.createStatement();
                    ResultSet episodeRelationSet = episodeRelationStatement.executeQuery(String.format("SELECT episode_id FROM season_episode WHERE season_id = %d", seasonId));

                    List<Episode> episodes = new ArrayList<>();

                    while(episodeRelationSet.next()) {
                        int episodeId = episodeRelationSet.getInt("episode_id");
                        Statement episodeStatement = conn.createStatement();
                        ResultSet episodeSet = episodeStatement.executeQuery(String.format("SELECT * FROM Episode WHERE id = %d", episodeId));
                        while(episodeSet.next()) {
                            String episodeName = episodeSet.getString("name");
                            int episodeNumber = episodeSet.getInt("number");
                            String episodeLengthString = episodeSet.getString("length");
                            String airDateString = episodeSet.getString("air_date");
                            String episodeDescription = episodeSet.getString("description");

                            PeriodFormatter runtimeFormatter = new PeriodFormatterBuilder()
                                    .appendHours().appendSeparator(":")
                                    .appendMinutes()
                                    .appendSeparator(":")
                                    .appendSeconds()
                                    .toFormatter();
                            Period runtime = runtimeFormatter.parsePeriod(episodeLengthString);
                            DateTime airDate = fmt.parseDateTime(airDateString);
                            episodes.add(new Episode(episodeId, episodeName, episodeNumber, runtime, airDate, episodeDescription));
                        }
                    }
                    seasons.add(new Season(seasonId, seasonNumber, startDate, endDate, posterUrl, episodes));

                }
            }

            shows.add(new Show(showID, showName, startYear, endYear, rating, genres, summary, seasons));
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
