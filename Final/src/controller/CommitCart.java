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
import dbhelpers.UpdateQuery;
import model.Cart;
import model.Cartln;
import model.Product;

/**
 * Servlet implementation class CartServlet
 */

@WebServlet(description = "Controller for adding a product to the cart", urlPatterns = { "/commitcart"})

public class CommitCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommitCart() {
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
		HttpSession session = request.getSession();
		ServletContext sc = getServletContext();
		String url = "/shop";
        String sku = (String) session.getAttribute("sku");
        //String trigger = (String) session.getAttribute("trigger");
        //String quantityString = (String) session.getAttribute("cartLnQuantity");
        String quantityString = request.getParameter("cartLnQuantity");
        String trigger = request.getParameter("trigger");
        
        System.out.println("****************" );
        System.out.println("after getting to commitcart servlet" );
		System.out.println(sku);
		System.out.println(trigger);
		System.out.println(quantityString);
		System.out.println("**********************" );
		
		
           
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
            }

            //if the user enters a negative or invalid quantity,
            //the quantity is automatically reset to 1.
            
            
            int cartLnQuantity;
            int reqQuantity=0;
            try {
            	cartLnQuantity = Integer.parseInt(quantityString);
            	reqQuantity = cartLnQuantity;
                if (cartLnQuantity < 0) {
                	cartLnQuantity = 1;
                	
                }
            } catch (NumberFormatException nfe) {
            	cartLnQuantity = 1;
            }

            // String path = sc.getRealPath("/WEB-INF/products.txt");
            ReadRecord rr = new ReadRecord("final", "root", "Headbanger#1", sku);
            UpdateQuery uq = new UpdateQuery("final", "root", "Headbanger#1");
    		
            rr.doRead();
            Product product = rr.getProduct();
    		
    		System.out.println("after getting record in commitcart servlet" );
    		System.out.println(product);
    		System.out.println(cartLnQuantity);
    		int PQuantity = product.getQuantity();
    		int NewAddQuantity = PQuantity - cartLnQuantity;
    		int NewDelQuantity = PQuantity + cartLnQuantity;
    		
            if (cartLnQuantity < PQuantity) {
            
    		
    		Cartln cartln = new Cartln();
            cartln.setProduct(product);
            System.out.println("right before trigger");
            if (trigger.equals("delete")){
            	// product.setQuantity(NewDelQuantity);
            	// uq.doUpdate(product);
            	cart.removeItem(cartln);
            }
            
            if (trigger.equals("update")){
            	cart.removeItem(cartln);
            	// cart.addItem(cartln);
                // cartln.setcartLnQuantity(cartLnQuantity);
            	if (cartLnQuantity > 0) {
            		 product.setQuantity(NewAddQuantity);
                	 uq.doUpdate(product);
            		cart.addItem(cartln);
                    cartln.setcartLnQuantity(cartLnQuantity);
                } else if (cartLnQuantity == 0) {
                    cart.removeItem(cartln);
                    // product.setQuantity(NewDelQuantity);
                	// uq.doUpdate(product);
                }
            	
            	
            	
            }
            
            if (trigger.equals("add")){
            	System.out.println("in trigger add");	
            
            if (cartLnQuantity > 0) {
                cart.addItem(cartln);
                cartln.setcartLnQuantity(cartLnQuantity);
                product.setQuantity(NewAddQuantity);
           	    uq.doUpdate(product);
            } else if (cartLnQuantity == 0) {
                cart.removeItem(cartln);
            }}
            System.out.println("right after trigger");
            //System.out.println(cartln);
            System.out.println(cartLnQuantity);
            //System.out.println(product);
            int checkcartlnquantity = cartln.getcartLnQuantity();
            System.out.println("****");
            System.out.println("checkcartlnQuantity");
            System.out.println(checkcartlnquantity);
            session.setAttribute("cart", cart);
            // request.setAttribute("product", product);
            url = "/shop";
            }
            else {
            	url = "/quantityerror.jsp";
            	session.setAttribute("cart", cart);
            	session.setAttribute("rquantity", reqQuantity);
            	System.out.println(reqQuantity);
            	session.setAttribute("invquantity", PQuantity);
            }
            
                
        sc.getRequestDispatcher(url).forward(request, response);
    
	}}


