/**
 * 
 */
package model;

/**
 * @author mmc6
 *
 */
public class Product {
	
	private String sku;
	private String productType;
	private String description;
	private String imageName;
	private double cost;
	private double price;
	private int quantity;
	
	/**
	 * 
	 	 */
	public Product() {
		this.sku = "aaaa111";
		this.productType = "notype";
		this.description = "nondescript";
		this.imageName = "noname";
		this.cost = 0;
		this.price = 0;
		this.quantity = 0;
	}
	
	
	
	/**
	 * @param sku
	 * @param productType
	 * @param flavor
	 * @param cost
	 * @param price
	 * @param quantity
	 */
	public Product(String sku, String productType, String description, String imageName, double cost, double price, int quantity) {
		this.sku = sku;
		this.productType = productType;
		this.description = description;
		this.imageName = imageName;
		this.cost = cost;
		this.price = price;
		this.quantity = quantity;
	}


	/**
	 * @return the sku
	 */
	public String getSku() {
		return sku;
	}



	/**
	 * @param sku the sku to set
	 */
	public void setSku(String sku) {
		this.sku = sku;
	}


	/**
	 * @return the productType
	 */
	public String getProductType() {
		return productType;
	}



	/**
	 * @param productType the productType to set
	 */
	public void setProductType(String productType) {
		this.productType = productType;
	}



	/**
	 * @return the flavor
	 */
	public String getDescription() {
		return description;
	}



	/**
	 * @param flavor the flavor to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}



	/**
	 * @return the cost
	 */
	public double getCost() {
		return cost;
	}



	/**
	 * @param cost the cost to set
	 */
	public void setCost(double cost) {
		this.cost = cost;
	}



	/**
	 * @return the price
	 */
	public double getPrice() {
		return price;
	}



	/**
	 * @param price the price to set
	 */
	public void setPrice(double price) {
		this.price = price;
	}



	/**
	 * @return the quantity
	 */
	public int getQuantity() {
		return quantity;
	}



	/**
	 * @param quantity the quantity to set
	 */
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}



	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Product [sku=" + sku + ", productType=" + productType + ", description=" + description + ", imageName=" + imageName +", cost=" + cost
				+ ", price=" + price + ", quantity=" + quantity + "]";
	}



	/**
	 * @return the imageName
	 */
	public String getImageName() {
		return imageName;
	}



	/**
	 * @param imageName the imageName to set
	 */
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

}
