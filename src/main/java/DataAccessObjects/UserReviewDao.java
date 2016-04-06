package DataAccessObjects;

import Models.Movie;
import Models.UserReview;
import org.joda.time.DateTime;

import java.sql.SQLException;
import java.util.List;

/**
 * Dylan Bannon <drb2857@rit.edu>
 */
public interface UserReviewDao {
    List<UserReview> getAllUserReviews() throws SQLException;
    UserReview getUserReview(int reviewId) throws SQLException;
    UserReview getUserReview(String userName, DateTime date) throws SQLException;
    void deleteUserReview(int reviewID) throws SQLException;
    void deleteUserReview(String userName, DateTime date) throws SQLException;
    void addUserReview(UserReview userReview) throws SQLException;
}
