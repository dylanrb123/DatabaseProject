package Models;

import org.joda.time.DateTime;

import java.util.List;

/**
 * @author Grant Salk <gas7933@rit.edu>
 */
public class Season {
    private int seasonId;
    private int seasonNumber;
    private DateTime startDate;
    private DateTime endDate;
    private String posterURL;
    private List<Episode> episodes;

    public Season(int seasonId, int seasonNumber, DateTime startDate, DateTime endDate, String posterURL, List<Episode> episodes){
        this.seasonId = seasonId;
        this.seasonNumber = seasonNumber;
        this.startDate = startDate;
        this.endDate = endDate;
        this.posterURL = posterURL;
        this.setEpisodes(episodes);
    }

    public int getSeasonId() {
        return seasonId;
    }

    public void setSeasonId(int seasonId) {
        this.seasonId = seasonId;
    }

    public int getSeasonNumber() {
        return seasonNumber;
    }

    public void setSeasonNumber(int seasonNumber) {
        this.seasonNumber = seasonNumber;
    }

    public DateTime getStartDate() {
        return startDate;
    }

    public void setStartDate(DateTime startDate) {
        this.startDate = startDate;
    }

    public DateTime getEndDate() {
        return endDate;
    }

    public void setEndDate(DateTime endDate) {
        this.endDate = endDate;
    }

    public String getPosterURL() {
        return posterURL;
    }

    public void setPosterURL(String posterURL) {
        this.posterURL = posterURL;
    }

    @Override
    public boolean equals(Object o) {
        Season s;
        if(o instanceof Season) s = (Season) o;
        else return false;
        // seasons are equal if they have the same ID
        return this.getSeasonId() == s.getSeasonId();
    }

    public List<Episode> getEpisodes() {
        return episodes;
    }

    public void setEpisodes(List<Episode> episodes) {
        this.episodes = episodes;
    }
}
