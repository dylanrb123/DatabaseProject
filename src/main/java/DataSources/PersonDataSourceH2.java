package DataSources;

import DataAccessObjects.PersonDao;
import Models.Person;
import Scripts.DatabaseScripts;
import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Megan O'Connor <meo7507>
 */
public class PersonDataSourceH2 implements PersonDao{

    @Override
    public List<Person> getAllPeople() throws SQLException{
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet resultSet = stmt.executeQuery("SELECT * from Person");

        List<Person> people = new ArrayList<>();

        while(resultSet.next()){
            int personID = resultSet.getInt("id");
            String name = resultSet.getString("name");
            String DOB = resultSet.getString("DOB");
            String[] dateList = DOB.split("-");
            DateTime date = new DateTime(Integer.parseInt(dateList[0]), Integer.parseInt(dateList[1]),
                    Integer.parseInt(dateList[2]), 0, 0);
            String biography = resultSet.getString("biography");

            people.add(new Person(personID, name, date, biography));
        }
        return people;
    }

    @Override
    public Person getPerson(int personID)throws SQLException{
        List<Person> people = getAllPeople();
        for(Person p : people){
            if(p.getPersonID() == personID){
                return p;
            }
        }
        return null;
    }

    @Override
    public Person getPerson(String name, DateTime DOB) throws SQLException{
        List<Person> people = getAllPeople();
        for(Person p : people){
            if(p.getName().equals(name) && p.getDOB().equals(DOB)){
                return p;
            }
        }
        return null;
    }

    @Override
    public void deletePerson(int personID) throws SQLException{
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();
        stmt.execute("DELETE FROM Person WHERE id = " + personID);
    }

    @Override
    public void deletePerson(String name, DateTime DOB)throws SQLException{
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();

        DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
        String DOBString = fmt.print(DOB);

        stmt.execute("DELETE FROM Person WHERE name = " + name + " AND DOB = " + DOBString);
    }

    @Override
    public void addPerson(Person person) throws SQLException{
        Connection conn = DatabaseScripts.getConnection();
        Statement stmt = conn.createStatement();

        stmt.execute("INSERT INTO Person (name, DOB, biography) " +
                "VALUES (" + person.getName() +
                ", " + person.getDOB() + ", " + person.getBiography() + ")");
    }
}
