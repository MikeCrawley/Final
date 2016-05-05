<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ page import="model.Product" %>
    
<% Product product = (Product) request.getAttribute("product"); %>    

    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href ="css/stylesheet.css" rel = "stylesheet" type = "text/css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Add to Cart</title>
</head>
<body>
<div id = "header">
	<h1>Crawley and Daley's 
	<br>World Class Scarves</h1>

	<ul>
		<li><a href="login.jsp">Login</a></li>
		<li><a href="enroll.jsp">Enroll</a></li>
	</ul>

</div>

<div id = "nav">
	<ul>
		<li><a href="index.jsp">Home</a></li>
		<li><a href="products.jsp">Products</a></li>
		<li><a href="aboutus.jsp">About Us</a></li>
		<li><a href="contactus.jsp">Contact Us</a></li>
		
		
	</ul>

</div>
<div id = "content">

<h1>Add to cart</h1>
<c:set var="sku" value="${product.sku}" scope="session"  />

<form name=addtocart action=commitcart method=get >

    <label>
      Product Sku:
   </label>
   ${product.sku}
   <br />
 
     <label>
      Product Type
   </label>
   ${product.productType}
   <br />
   <label>
      Product Description:
   </label>
   ${product.description}
   <br />
   
   <label>
      Product Cost:
   </label>
   ${product.price}
   <br />
   
      
   <label>
      How many would you like to purchase?
   </label>
   <input type=text name=cartLnQuantity value="${cartln.cartLnQuantity}" />
   <br />
   <input type=submit name=trigger value="add" />
     
</form>
<p>
  <a href="shop">return to shopping</a>
</p>
</div>
<div id = "sidebar">
	<img src="images/Names2.png" style="width:150px;height:200px;">
	
	<div class = "scarfslideshow">
		<figure>
			<img src = "slideshow/scarf1.jpg" alt = "The First Scarf"/>
			<figcaption>"The First Scarf"</figcaption>
		</figure>
		<figure>
			<img src = "slideshow/scarf2.jpg"/>
			<figcaption>"The Second Scarf</figcaption>
		</figure>
		<figure>
			<img src = "slideshow/scarf3.jpg"/>
			<figcaption>The Third Scarf</figcaption>
		</figure>
		<figure>
			<img src = "slideshow/scarf4.jpg"/>
			<figcaption>The Fourth Scarf</figcaption>
		</figure>
		<figure>
			<img src = "slideshow/scarf5.jpg"/>
			<figcaption>The Fifth Scarf</figcaption>
		</figure>
		<figure>
			<img src = "slideshow/scarf6.jpg"/>
			<figcaption>The Sixth Scarf</figcaption>
		</figure>
		<figure>
			<img src = "slideshow/scarf7.jpg"/>
			<figcaption>The Seventh Scarf</figcaption>
		</figure>
		<figure>
			<img src = "slideshow/scarf8.jpg"/>
			<figcaption>The Eighth Scarf</figcaption>
		</figure>
	</div>
</div>
<div id = "footer">This is the footer area</div>


</body>
</html>