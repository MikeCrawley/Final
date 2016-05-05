package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbhelpers.ReadQuery;
import dbhelpers.ReadShop;

/**
 * Servlet implementation class ReadServlet
 */
@WebServlet(
		description = "Controller for reading the products table", 
		urlPatterns = { 
				"/shop", 
				"/productlist"
		})
public class Shop extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Shop() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Create a ReadQuery helper object
		ReadShop rs = new ReadShop("final", "root", "Headbanger#1");
		
		// Get the html table from the REadQuery object
		rs.doRead();
		String table = rs.getHTMLTable();
		// System.out.println(table); 
		// pass execution control to read.jsp along with the table
		request.setAttribute("table", table);
		// request.setAttribute("cartLnQuantity", 1);
		String url = "/in.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
