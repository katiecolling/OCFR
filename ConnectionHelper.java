/**
 * 
 */
package dbHelpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author atlmtw
 * Sole purpose of this class is to reduce the code used to connect to servers.
 * Username and Password are left as parameters to allow any user to make a connection
 * as long as they have access to the database
 */
public class ConnectionHelper {
	
	private static Connection connection;
	public ConnectionHelper(){}

	public Connection doConnection(String dbName, String uname, String pwd){
		//Create a string that will connect the jdbc and mysql server
		String url = "jdbc:mysql://localhost:3306/" + dbName;
		
		try {
			//Initiate the driver that will connect the two entities
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			connection = DriverManager.getConnection(url, uname, pwd);
			
			
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//return the connection to the database
		return connection;
	}

}