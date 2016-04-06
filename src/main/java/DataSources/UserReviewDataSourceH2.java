package DataSources;

import DataAccessObjects.UserReviewDao;
import Enums.MpaaRating;
import Models.Movie;
import Models.UserReview;
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
 * @author Grant Salk <gas7933@rit.edu>
 *         3/16/2016
 */
public class UserReviewDataSourceH2 implements UserReviewDao {

    @Override
    public List<UserReview> getAllUserReviews() throws SQLException {
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet resultSet = stmt.executeQuery("SELECT * from UserReview");

        List<UserReview> userReviews = new ArrayList<>();

        while(resultSet.next()) {
            int reviewId = resultSet.getInt("id");
            String userName = resultSet.getString("username");
            float star_rating = resultSet.getFloat("star_rating");
            String review_date = resultSet.getString("review_date");
            String[] dateList = review_date.split("-");
            DateTime date = new DateTime(Integer.parseInt(dateList[0]), Integer.parseInt(dateList[1]),
                    Integer.parseInt(dateList[2]), 0, 0);
            String title = resultSet.getString("title");
            String body = resultSet.getString("body");

            userReviews.add(new UserReview(reviewId, userName, star_rating, date, title, body));
        }

        return userReviews;
    }

    @Override
    public UserReview getUserReview(int reviewID) throws SQLException {
        List<UserReview> userReviews = getAllUserReviews();
        for(UserReview ur : userReviews) {
            if(ur.getReviewID() == reviewID) return ur;
        }
        return null;
    }

    @Override
    public UserReview getUserReview(String userName, DateTime date) throws SQLException {
        List<UserReview> userReviews = getAllUserReviews();
        for(UserReview ur : userReviews) {
            if(ur.getUserName().equals(userName) && ur.getDate().equals(date)) return ur;

        }
        return null;
    }

    @Override
    public void deleteUserReview(int reviewId) throws SQLException {
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        stmt.execute("DELETE FROM UserReview WHERE id = " + reviewId);
    }

    @Override
    public void deleteUserReview(String userName, DateTime date) throws SQLException {
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();

        DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
        String dateString = fmt.print(date);

        stmt.execute("DELETE FROM UserReview WHERE username = " + userName + " AND date = " + dateString);
    }

    @Override
    public void addUserReview(UserReview userReview) throws SQLException{
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();

        stmt.execute("INSERT INTO UserReview " +
                "(id, username, star_rating, review_date, title, body) " +
                "VALUES (" + userReview.getReviewID() + ", " + userReview.getUserName() + ", " +
                userReview.getStarRating() + ", " + userReview.getDate() + ", " + userReview.getTitle() + ", " +
                userReview.getBody() + ")");

    }
}
