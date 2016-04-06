package Models;

import org.joda.time.DateTime;
import org.joda.time.Duration;

/**
 * @author Grant Salk <gas7933@rit.edu>
 */
public class Episode {
    private int episodeId;
    private String episodeName;
    private int episodeNumber;
    private Duration length;
    private DateTime airDate;
    private String description;

    public Episode(int episodeId, String episodeName, int episodeNumber, Duration length, DateTime airDate,
                   String description){
        this.episodeId = episodeId;
        this.episodeName = episodeName;
        this.episodeNumber = episodeNumber;
        this.length = length;
        this.airDate = airDate;
        this.description = description;
    }

    public int getEpisodeId() {
        return episodeId;
    }

    public void setEpisodeId(int episodeId) {
        this.episodeId = episodeId;
    }

    public String getEpisodeName() {
        return episodeName;
    }

    public void setEpisodeName(String episodeName){
        this.episodeName = episodeName;
    }

    public int getEpisodeNumber() {
        return episodeNumber;
    }

    public void setEpisodeNumber(int episodeNumber) {
        this.episodeNumber = episodeNumber;
    }

    public Duration getLength() {
        return length;
    }

    public void setLength(Duration length){
        this.length = length;
    }

    public DateTime getAirDate() {
        return airDate;
    }

    public void setAirDate(DateTime airDate) {
        this.airDate = airDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description){
        this.description = description;
    }

    @Override
    public boolean equals(Object o) {
        Episode e;
        if(o instanceof Episode) e = (Episode) o;
        else return false;
        // episodes are equal if they have the same ID or same episode number and air date
        return (this.getEpisodeId() == e.getEpisodeId()) ||
                (this.getEpisodeNumber() == e.getEpisodeNumber() && this.getAirDate().equals(e.getAirDate()));
    }
}
