package DataAccessObjects;

import java.sql.SQLException;
import java.util.List;

import Models.Person;
import org.joda.time.DateTime;

/**
 * Created by Megan O'Connor <meo7507>
 */
public interface PersonDao {
    List<Person> getAllPeople() throws SQLException;
    Person getPerson(int personID) throws SQLException;
    Person getPerson(String name, DateTime DOB) throws SQLException;
    void deletePerson(int personID) throws SQLException;
    void deletePerson(String name, DateTime DOB) throws SQLException;
    void addPerson(Person person) throws SQLException;
}
