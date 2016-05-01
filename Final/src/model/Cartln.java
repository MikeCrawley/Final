package model;

import java.io.Serializable;
import java.text.NumberFormat;

public class Cartln implements Serializable {

	private Product product;
    private int cartLnQuantity;

    public Cartln() {}

    public void setProduct(Product p) {
        product = p;
    }

    public Product getProduct() {
        return product;
    }

    public void setcartLnQuantity(int cartLnQuantity) {
        this.cartLnQuantity = cartLnQuantity;
    }

    public int getcartLnQuantity() {
        return cartLnQuantity;
    }

    public double getTotal() {
        double total = product.getPrice() * cartLnQuantity;
        return total;
    }

    public String getTotalCurrencyFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(this.getTotal());
    }
	
}
