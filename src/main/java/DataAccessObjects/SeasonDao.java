package DataAccessObjects;

import Models.Movie;
import Models.Season;
import org.joda.time.DateTime;

import java.sql.SQLException;
import java.util.List;

/**
 * Dylan Bannon <drb2857@rit.edu>
 */
public interface SeasonDao {
    List<Season> getAllSeasons() throws SQLException;
    Season getSeason(int movieId) throws SQLException;
    Season getSeason(int seasonNumber, DateTime startDate) throws SQLException;
    void deleteSeason(int movieId) throws SQLException;
    void deleteSeason(int seasonNumber, DateTime startDate) throws SQLException;
    void addSeason(Season season) throws SQLException;
}
