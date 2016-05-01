package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Product;
import dbhelpers.UpdateQuery;
import dbhelpers.AddQuery;

/**
 * Servlet implementation class UpdateProductServlet
 */
@WebServlet(description = "Controller which starts the actual product update to the database", urlPatterns = { "/updateProduct" })
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// get the form data and set up a product object
		
		
		String sku = request.getParameter("sku");
		String imagename = request.getParameter("imagename");
		String productType = request.getParameter("productType");
	    String description = request.getParameter("description");
	    Double cost = Double.parseDouble(request.getParameter("cost"));
	    Double price = Double.parseDouble(request.getParameter("price"));
	    int quantity = Integer.parseInt(request.getParameter("quantity"));
	
		// set up a product object
	    Product product = new Product();
	    product.setSku(sku);
	    product.setProductType(productType);
	    product.setDescription(description);
	    product.setCost(cost);
	    product.setPrice(price);
	    product.setQuantity(quantity);
	    product.setImageName(imagename);
	    
	    
	    
		// set up an addQuery object
	    UpdateQuery uq = new UpdateQuery("final", "root", "Headbanger#1");
		
	    
		uq.doUpdate(product);
		
		// pass control on to the ReadServlet
		String url = "/read";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
