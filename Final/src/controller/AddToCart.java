package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbhelpers.ReadRecord;
import model.Cart;
import model.Cartln;
import model.Product;

/**
 * Servlet implementation class CartServlet
 */

@WebServlet(description = "Controller for adding a product to the cart", urlPatterns = { "/addtocart"})

public class AddToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		        
		ServletContext sc = getServletContext();
		String url = "/shop";
        String sku = request.getParameter("sku");
        String quantityString = request.getParameter("cartLnQuantity");
        

            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
            }

            //if the user enters a negative or invalid quantity,
            //the quantity is automatically reset to 1.
            // int cartLnQuantity;
            // try {
            	//cartLnQuantity = Integer.parseInt(quantityString);
                //if (cartLnQuantity < 0) {
                	//cartLnQuantity = 1;
               // }
            //} catch (NumberFormatException nfe) {
            	//cartLnQuantity = 1;
            //}

            // String path = sc.getRealPath("/WEB-INF/products.txt");
            ReadRecord rr = new ReadRecord("final", "root", "Headbanger#1", sku);
    		
    		rr.doRead();
            Product product = rr.getProduct();
    		
    		//System.out.println("after getting record in addtocart servlet" );
    		//System.out.println(product);
    		
            //Cartln cartln = new Cartln();
            //cartln.setProduct(product);
            //cartln.setcartLnQuantity(cartLnQuantity);
            //if (cartLnQuantity > 0) {
              //  cart.addItem(cartln);
            //} else if (cartLnQuantity == 0) {
              //  cart.removeItem(cartln);
            //}
            //System.out.println(cartln);
            //System.out.println(cartLnQuantity);
            //System.out.println(product);
            session.setAttribute("cart", cart);
            session.setAttribute("sku", sku);
            request.setAttribute("product", product);
            url = "/addtocart.jsp";
        
                
        sc.getRequestDispatcher(url).forward(request, response);
    
	}}


