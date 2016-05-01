package model;

import java.io.Serializable;
import java.util.ArrayList;

public class Cart implements Serializable {
	
	private ArrayList<Cartln> items;

    public Cart() {
        items = new ArrayList<Cartln>();
    }

    public ArrayList<Cartln> getItems() {
        return items;
    }

    public int getCount() {
        return items.size();
    }

    public void addItem(Cartln item) {
        String newsku = item.getProduct().getSku();
        int quantity = item.getcartLnQuantity();
        for (int i = 0; i < items.size(); i++) {
            Cartln Cartln = items.get(i);
            if (Cartln.getProduct().getSku().equals(newsku)) {
                Cartln.setcartLnQuantity(quantity);
                return;
            }
        }
        items.add(item);
    }

    public void removeItem(Cartln item) {
        String sku = item.getProduct().getSku();
        for (int i = 0; i < items.size(); i++) {
            Cartln Cartln = items.get(i);
            if (Cartln.getProduct().getSku().equals(sku)) {
                items.remove(i);
                return;
            }
        }
    }
	

}
