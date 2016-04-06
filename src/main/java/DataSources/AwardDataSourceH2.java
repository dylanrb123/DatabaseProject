package DataSources;

import DataAccessObjects.AwardDao;
import Models.Award;
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
public class AwardDataSourceH2 {

    public List<Award> getAllAwards() throws SQLException{
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet resultSet = stmt.executeQuery("SELECT * from Award;");

        List<Award> awards = new ArrayList<>();

        while(resultSet.next()){
            int awardID = resultSet.getInt("id");
            boolean isWinner = resultSet.getBoolean("isWinner");
            String awardName = resultSet.getString("name");
            int year = resultSet.getInt("year");
            String category = resultSet.getString("category");

            awards.add(new Award(awardID, isWinner, awardName, year, category));
        }
        return awards;
    }

    public Award getAward(int awardID) throws SQLException{
        List<Award> awards = getAllAwards();
        for(Award a : awards){
            if(a.getAwardID() == awardID){
                return a;
            }
        }
        return null;
    }

    public Award getAward(String awardName) throws SQLException{
        List<Award> awards = getAllAwards();
        for(Award a : awards){
            if(a.getAwardName().equals(awardName)){
                return a;
            }
        }
        return null;
    }

    public void deleteAward(int awardID)throws SQLException{
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        stmt.execute("DELETE FROM Award WHERE id = " + awardID + ";");
    }

    public void deleteAward(String awardName)throws SQLException{
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        stmt.execute("DELETE FROM Award WHERE name = " + awardName + ";");
    }

    public void addAward(Award award) throws SQLException{
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();

        stmt.execute("INSERT INTO Award (isWinner, name, year, category) VALUES ("
        + award.getIsWinner() + ", " + award.getAwardName() + ", "
        + award.getYear() + ", " + award.getCategory() + ");");
    }
}
