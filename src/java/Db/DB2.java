package Db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ccari
 */
public class DB2 {
    
    public static Connection getConnection() throws SQLException {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3307/"
                    + "webjsp?useTimeZone=True&serverTimeZone=UTC&"
                    + "user=root&password=Mklauro@2022");

        } catch (ClassNotFoundException e) {

            throw new DbException(e.getMessage());
        }
        
    }
    
}
