package DataAccessObjects;

import Models.Show;
import Models.UserReview;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by Megan O'Connor <meo7507>
 */
public interface ShowDao {
    List<Show> getAllShows() throws SQLException;
    Show getShow(int showID) throws SQLException;
    Show getShow(String showName) throws SQLException;
    void deleteShow(int showID) throws SQLException;
    void deleteShow(String showName) throws SQLException;
    void addShow(Show show) throws SQLException;
    void addReview(int showId, UserReview review) throws SQLException;
}
