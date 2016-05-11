package Models;

import java.util.List;

/**
 * Created by Megan O'Connor <meo7507>
 */
public class Show {
    private int showID;
    private String showName;
    private int startYear;
    private int endYear;
    private String rating;
    private List<String> genres;
    private String summary;
    private List<Season> seasons;

    public Show(int showID, String showName, int startYear, int endYear, String rating,
        List<String> genres, String summary, List<Season> seasons){
        this.showID = showID;
        this.showName = showName;
        this.startYear = startYear;
        this.endYear = endYear;
        this.rating = rating;
        this.genres = genres;
        this.summary = summary;
        this.setSeasons(seasons);
    }

    public int getShowId(){
        return showID;
    }

    public void setShowID(int showID){
        this.showID = showID;
    }

    public String getShowName(){
        return showName;
    }

    public void setShowName(String showName){
        this.showName = showName;
    }

    public int getStartYear(){
        return startYear;
    }

    public void setStartYear(int startYear){
        this.startYear = startYear;
    }

    public int getEndYear(){
        return endYear;
    }

    public void setEndYear(int endYear){
        this.endYear = endYear;
    }

    public String getRating(){
        return rating;
    }

    public void setRating(String rating){
        this.rating = rating;
    }

    public List<String> getGenres(){
        return genres;
    }

    public void setGenres(List<String> genres){
        this.genres = genres;
    }

    public String getSummary(){
        return summary;
    }

    public void setSummary(String summary){
        this.summary = summary;
    }

    @Override
    public boolean equals(Object o){
        Show s;
        if(o instanceof Show){
            s = (Show) o;
        }
        else{
            return false;
        }
        return this.getShowId() == s.getShowId() || this.getShowName().equals(s.getShowName());
    }


    public List<Season> getSeasons() {
        return seasons;
    }

    public void setSeasons(List<Season> seasons) {
        this.seasons = seasons;
    }
}
