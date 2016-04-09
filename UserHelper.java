/**
 * 
 */
package dbHelpers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbHelpers.ConnectionHelper;
import model.User;

/**
 * @author atlmtw
 *
 */
public class UserHelper {
	private ConnectionHelper cs;
	private Connection connection;
	
	public UserHelper(String dbName, String uname, String pwd){
		this.connection = cs.doConnection(dbName, uname, pwd);
	}
	public boolean symbolChecker(String username){
		boolean check = true;
		String symbols [] = {"!","%","]","/",".","?","!","("};
		for(int i=0; i<=symbols.length; i++){
			if(username.contains(symbols[i])){
				check = false;
			}
		}
		return check;
	}
	/*
	 * This is a method that connects to the database and checks to see
	 * if the inputed username and password match any user in the
	 * users database. If true return true, if false return false*/
	public User authenticateUser(String username, String password)
	{
		User user = null;
		//Create a query that will find all results that match the username and password
		String query = "SELECT * FROM users WHERE uname = ? AND pwd = ?";
		
		try {
			//Set the username and password to the parameters
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			
			//if there are no results, than return false
			if(rs.next()==false){
				user = null;
			} 
			else{ //if there are results, return true
				user = new User(username, password);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return user;
	}
	
	
}
