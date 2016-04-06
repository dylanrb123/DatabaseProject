package Models;

/**
 * Created by Megan O'Connor <meo7507>
 */
public class Award {
    private int awardID;
    private boolean isWinner;
    private String awardName;
    private int year;
    private String category;

    public Award(int awardID, boolean isWinner, String awardName, int year, String category){
        this.awardID = awardID;
        this.isWinner = isWinner;
        this.awardName = awardName;
        this.year = year;
        this.category = category;
    }

    public int getAwardID(){
        return awardID;
    }

    public void setAwardID(int awardID){
        this.awardID = awardID;
    }

    public boolean getIsWinner(){
        return isWinner;
    }

    public void setIsWinner(boolean isWinner){
        this.isWinner = isWinner;
    }

    public String getAwardName(){
        return awardName;
    }

    public void setAwardName(String awardName){
        this.awardName = awardName;
    }

    public int getYear(){
        return year;
    }

    public void setYear(int year){
        this.year = year;
    }

    public String getCategory(){
        return category;
    }

    public void setCategory(String category){
        this.category = category;
    }

    @Override
    public boolean equals(Object o){
        Award a;
        if (o instanceof Award){
            a = (Award) o;
        }
        else{
            return false;
        }
        //awards can be uniquely identified by either ID or name
        return this.getAwardID() == a.getAwardID() || this.getAwardName().equals(a.getAwardName());
    }
}
