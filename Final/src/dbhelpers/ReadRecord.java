/**
 * 
 */
package dbhelpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import model.Product;

/**
 * @author MikeCrawley
 *
 */
public class ReadRecord {
	
	private Connection connection;
	private ResultSet results;
	
	private Product product = new Product();
	private String SKU;
	
	public ReadRecord(String dbName, String uname, String pwd, String sku){
		System.out.println("before getting record in ReadRecord DBhelper" );
		String url = "jdbc:mysql://localhost:3306/" + dbName;
		this.SKU = sku;
		
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			this.connection = DriverManager.getConnection(url, uname, pwd);
			
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void doRead(){
		String query = "select * from products where sku = ?";
		
		try {
			PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setString(1, this.SKU);
			
			this.results = ps.executeQuery();
			
			this.results.next();
			
			product.setSku(this.results.getString("sku"));
			product.setProductType(this.results.getString("productType"));
			product.setDescription(this.results.getString("description"));
			product.setImageName(this.results.getString("imageName"));
			product.setCost(this.results.getDouble("cost"));
			product.setPrice(this.results.getDouble("price"));
			product.setQuantity(this.results.getInt("quantity"));
			
			System.out.println("after getting record in ReadRecord DBhelper" );
			System.out.println(this.product);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Product getProduct(){
		return this.product;
	}
	
	

}
