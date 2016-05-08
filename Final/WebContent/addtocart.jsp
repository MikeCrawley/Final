<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ page import="model.Product" %>
    
<% Product product = (Product) request.getAttribute("product"); %>    

<!DOCTYPE html>
<html>
<link href ="css/stylesheet.css" rel = "stylesheet" type = "text/css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add to Cart</title>
</head>
<body>

<div id = "header">
	<div id = "headerimages">
		<img src = "headerimages/HScarf.png">
	
	</div>
	
	<div id = "headertext">
		<h1>Mike Crawley and Ryan Daley's World Class Scarves</h1>
	</div>
	
	<div id = "headerlinks">
		<ul>
			<li>
				<a href="enroll.jsp" class = "a-hbutton">
					<span class = "a-hbutton-text">Enroll</span>
					<span class = "a-hbutton-slide-text">Free!</span>
					<span class = "a-hbutton-icon-right"><span></span></span>
				</a>
			</li>
			<li><a href="login.jsp" class = "a-hbutton">
					<span class = "a-hbutton-text">Login</span>
					<span class = "a-hbutton-slide-text">Shop!</span>
					<span class = "a-hbutton-icon-right"><span></span></span>
				</a>
		</ul>
	
	</div>

</div>

<div id = "nav">
	<ul>
		<li><a href="index.jsp">Home</a></li>
		<li><a href="products.jsp">Products</a></li>
		<li><a href="aboutus.jsp">About Us</a></li>
		<li><a href="contactus.jsp">Contact Us</a></li>
		<li><a href="testimony.jsp">Testimonials</a></li>
		
		
	</ul>

</div>
<div id = "content2">

<h1>Add to cart</h1>
<c:set var="sku" value="${product.sku}" scope="session"  />

<img src="${product.imageName}" style="width:150px;height:200px;" class = "imgstyle">

<form name=addtocart action=commitcart method=get class = "formstyle" >

     <label>
      Product Sku:${product.sku}
   </label>
   
   <br />
 
     <label>
      Product Type: ${product.productType}
   </label>
   
   <br />
   <label>
      Product Description:${product.description}
   </label>
  
   <br />
   
   <label>
      Product Cost:${product.price}
   </label>
   
   <br />
   
      
   <label>
      How many would you like to purchase?
   </label>
   <input type=text name=cartLnQuantity value="${cartln.cartLnQuantity}" />
   <br />
   <input type=submit name=trigger value="add" class = "formbutton"/>
     
</form>
<p class = "pstyle">
  <a href="shop">Return to Shopping</a>
</p>
</div>
<div id = "sidebar2">
	
	
	<div class = "scarfslideshow">
		<figure>
			<img src = "slideshow/scarf1.jpg" alt = "The First Scarf"/>
			<figcaption>Lightweight Aqua</figcaption>
		</figure>
		<figure>
			<img src = "slideshow/scarf2.jpg"/>
			<figcaption>Quilted Pattern</figcaption>
		</figure>
		<figure>
			<img src = "slideshow/scarf3.jpg"/>
			<figcaption>Grey Taupe Stripe</figcaption>
		</figure>
		<figure>
			<img src = "slideshow/scarf4.jpg"/>
			<figcaption>Black White Chevron</figcaption>
		</figure>
		<figure>
			<img src = "slideshow/scarf5.jpg"/>
			<figcaption>Red Black Stripe</figcaption>
		</figure>
		<figure>
			<img src = "slideshow/scarf6.jpg"/>
			<figcaption>Grey Black Love</figcaption>
		</figure>
		<figure>
			<img src = "slideshow/scarf7.jpg"/>
			<figcaption>Sheer Sequins</figcaption>
		</figure>
		<figure>
			<img src = "slideshow/scarf8.jpg"/>
			<figcaption>Aqua Quatrefoil</figcaption>
		</figure>
	</div>
	<div class = "bsidebar">
		<img src="images/Names2.png">
	</div>
</div>
<div id = "footer">
	<div id = "footertext">
	<h5>Copyright (c) 2016 Mike and Ryan's Scarfs LLC.
	<br>This website is protected by copyright under UGA Law. Theft of any kind will result in a fine up to 20 Million Dollars.</h5>
	</div>
	
	<div id = "footerimages">
		<a href = "https://www.facebook.com" target = "_blank">
			<img src = "footerimages/facebook.png">
		</a>
		<a href = "https://www.twitter.com" target = "_blank">
			<img src = "footerimages/twitter.png" alt = "Check us out on Twitter!">
		</a>
		<a href = "https://plus.google.com/" target = "_blank">
			<img src = "footerimages/google.png">
		</a>
	</div>
</div>


</body>
</html>