/**
 * 
 */
package dbhelpers;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Product;
import model.User;

/**
 * @author MikeCrawley
 *
 */
public class AddUser {
	
	public Connection connection;
	
	public AddUser(String dbName, String uname, String pwd){
		String url = "jdbc:mysql://localhost:3306/" + dbName;
		
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			this.connection = DriverManager.getConnection(url, uname, pwd); 
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void doAdd(User user){
		String query = "insert into final.user (useremail, password, datecreated, username) values (?, ?, ?, ?)";
		
		try {
			PreparedStatement ps = connection.prepareStatement(query);
			
			
			
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getPassword());
			ps.setDate(3, (Date) user.getCreatedate());
			ps.setString(4, user.getUsername());
			
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
