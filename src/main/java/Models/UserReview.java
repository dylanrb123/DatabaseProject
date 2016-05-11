package Models;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

/**
 * Grant Salk <gas7933@rit.edu>
 */
public class UserReview {
    private long reviewId;
    private String userName;
    private int starRating;
    private DateTime date;
    private String title;
    private String body;

    public UserReview(long reviewId, String userName, int starRating,
                      DateTime date, String title, String body) {
        this.reviewId = reviewId;
        this.userName = userName;
        this.starRating = starRating;
        this.date = date;
        this.title = title;
        this.body = body;
    }

    public long getReviewID() {
        return reviewId;
    }

    public void setReviewID(long reviewId) {
        this.reviewId = reviewId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getStarRating() {
        return starRating;
    }

    public void setStarRating(int starRating) {
        this.starRating = starRating;
    }

    public DateTime getDate() {
        return date;
    }

    public void setDate(DateTime date) {
        this.date = date;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    @Override
    public boolean equals(Object o) {
        UserReview ur;
        if(o instanceof UserReview) ur = (UserReview) o;
        else return false;
        // user reviews are equal if they have the same ID or same username and date
        return (this.getReviewID() == ur.getReviewID()) ||
                (this.getUserName().equals(ur.getUserName()) && this.getDate().equals(ur.getDate()));

    }

    public String getDateString() {
        DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
        return fmt.print( this.date );

    }

}