/**
 * 
 */
package dbhelpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Product;

/**
 * 
 *
 */
public class UpdateQuery {
	
	private Connection connection;
	
	public UpdateQuery(String dbName, String uname, String pwd){
		
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
	
	public void doUpdate(Product product){
		String query = "update final.products set productType=?, description=?, cost=?, price=?, quantity=?, imageName=? where sku=?";
		
		try {
			PreparedStatement ps = connection.prepareStatement(query);
			
			
			// ps.setString(1, product.getSku());
			ps.setString(1, product.getProductType());
			ps.setString(2, product.getDescription());
			ps.setDouble(3, product.getCost());
			ps.setDouble(4, product.getPrice());
			ps.setInt(5, product.getQuantity());
			ps.setString(6, product.getImageName());
			ps.setString(7, product.getSku());
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	

}
