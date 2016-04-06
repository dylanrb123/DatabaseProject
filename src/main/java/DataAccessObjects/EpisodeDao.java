package DataAccessObjects;

import Models.Episode;
import org.joda.time.DateTime;

import java.sql.SQLException;
import java.util.List;

/**
 * Grant Salk <gas7933@rit.edu>
 */
public interface EpisodeDao {
    List<Episode> getAllEpisodes() throws SQLException;
    Episode getEpisode(int episodeId) throws SQLException;
    Episode getEpisode(String episodeName, DateTime airDate) throws SQLException;
    void deleteEpisode(int episodeId) throws SQLException;
    void deleteEpisode(String episodeName, DateTime airDate) throws SQLException;
    void addEpisode(Episode episode) throws SQLException;
}
