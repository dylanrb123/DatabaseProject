package DataAccessObjects;

import Models.Award;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by Megan O'Connor <meo7507>
 */
public interface AwardDao {
    List<Award> getAllAwards() throws SQLException;
    Award getAward(int awardID) throws SQLException;
    Award getAward(String awardName) throws SQLException;
    void deleteAward(int awardID) throws SQLException;
    void deteleAward(String awardName) throws SQLException;
}
