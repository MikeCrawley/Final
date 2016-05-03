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
public class ReadShop {
	
	private Connection connection;
	private ResultSet results;
	
	public ReadShop(String dbName, String uname, String pwd){
		String url = "jdbc:mysql://localhost:3306/" + dbName;
		
		// set up the driver
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			this.connection = DriverManager.getConnection(url, uname, pwd);
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void doRead(){
		String query = "select * from final.products";
		
		try {
			PreparedStatement ps = this.connection.prepareStatement(query);
			this.results= ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
	}
	
	public String getHTMLTable(){
		String table ="";
		table += "<table border=1>";
		table += "<tr>";
		table += "<th>Product Type</th>";
		table += "<th>Description</th>";
		table += "<th>Price</th>";
		table += "<th>Image</th>";
		table += "<th>Action</th>";
		table += "</tr>";
		
		try {
			while(this.results.next()){
				Product product = new Product();
				//System.out.println("product");
				product.setSku(this.results.getString("sku"));
				//System.out.println("sku");
				product.setProductType(this.results.getString("productType"));
				product.setImageName(this.results.getString("imageName"));
				product.setDescription(this.results.getString("description"));
				product.setCost(this.results.getDouble("cost"));
				product.setPrice(this.results.getDouble("price"));
				product.setQuantity(this.results.getInt("quantity"));
				//System.out.println(product.getSku());
				table +="<tr>";
				table +="<td>";
				table += product.getProductType();
				table +="</td>";
				table +="<td>";
				table += product.getDescription();
				table +="</td>";
				table +="<td>";
				table += product.getPrice();
				table +="</td>";
				table +="<td>";
				table += product.getImageName();
				table +="</td>";
				table +="<td>";
				table += "<a href=addtocart?sku=" + product.getSku() + ">Add to Cart</a>";
				table +="</td>";
				table +="</tr>";
				
				
								
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("catch error" );
		}
		
		table += "</table>";
		return table;
	}
	
	
	

}
