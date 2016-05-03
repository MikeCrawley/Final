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

@WebServlet(description = "Controller for adding a new product to the database", urlPatterns = { "/CartServlet"})

public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartServlet() {
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
		// get current action
        
		ServletContext sc = getServletContext();
		
		String change = request.getParameter("change");
        if (change == null) {
            change = "cart";  
        }

        // perform action and set URL to appropriate page
        String url = "/cart.jsp";
        if (change.equals("shop")) {
            url = "/shop";    
        } 
        else if (change.equals("cart")) {
            String sku = request.getParameter("sku");
            String quantityString = request.getParameter("cartLnQuantity");

            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
            }

            //if the user enters a negative or invalid quantity,
            //the quantity is automatically reset to 1.
            int cartLnQuantity;
            try {
            	cartLnQuantity = Integer.parseInt(quantityString);
                if (cartLnQuantity < 0) {
                	cartLnQuantity = 1;
                }
            } catch (NumberFormatException nfe) {
            	cartLnQuantity = 1;
            }

            // String path = sc.getRealPath("/WEB-INF/products.txt");
            ReadRecord rr = new ReadRecord("final", "root", "Headbanger#1", sku);
    		
    		// Get the html table from the REadQuery object
    		
    		
    		Product product = rr.getProduct();

            Cartln cartln = new Cartln();
            cartln.setProduct(product);
            cartln.setcartLnQuantity(cartLnQuantity);
            if (cartLnQuantity > 0) {
                cart.addItem(cartln);
            } else if (cartLnQuantity == 0) {
                cart.removeItem(cartln);
            }

            session.setAttribute("cart", cart);
            
            url = "/cart.jsp";
        }
        else if (change.equals("checkout")) {
            url = "/checkout.jsp";
        }

        sc.getRequestDispatcher(url).forward(request, response);
    }
	}


