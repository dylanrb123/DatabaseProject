package Models;

import org.joda.time.DateTime;


/**
 * Created by Megan O'Connor <meo7507>
 */
public class Person {
    private int personID;
    private String name;
    private DateTime DOB;
    private String biography;

    public Person(int personID, String name, DateTime DOB, String biography){
        this.personID = personID;
        this.name = name;
        this.DOB = DOB;
        this.biography = biography;
    }

    public int getPersonID(){
        return personID;
    }
    public void setPersonID(int personID){
        this.personID = personID;
    }
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }
    public DateTime getDOB(){
        return DOB;
    }
    public void setDOB(DateTime DOB){
        this.DOB = DOB;
    }
    public String getBiography(){
        return biography;
    }
    public void setBiography(String biography){
        this.biography = biography;
    }

    @Override
    public boolean equals(Object o){
        Person p;
        if (o instanceof Person){
            p = (Person) o;
        }
        else{
            return false;
        }
        //people can be uniquely identified by either ID or name and DOB
        return this.getPersonID() == p.getPersonID() ||
                ((this.getName().equals(p.getName())) && (this.getDOB() == p.getDOB()));
    }
}
