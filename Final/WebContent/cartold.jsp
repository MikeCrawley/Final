<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 


<!DOCTYPE html>
<html>
<link href ="css/stylesheet.css" rel = "stylesheet" type = "text/css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cartold</title>
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
<h1>Cart</h1>
<br/>
${cart}
<br />
<p class = "pstyle">
<a href=in.jsp>Return to Shopping</a> 
<br />
</p>

<table>
      <tr>
        <th>Quantity</th>
        <th>Description</th>
        <th>Price</th>
        <th>Amount</th>
        <th></th>
      </tr>
      <c:forEach var="item" items="${cart.items}">

      <tr>
        <td>
            <form action="" method="post" class = "formstyle">
                <input type="hidden" name="productCode" 
                       value="<c:out value='${item.product.sku}'/>">
                <input type=text name="quantity" 
                       value="<c:out value='${item.cartLnQuantity}'/>"  
                       id="quantity">
                <input type="submit" value="Update" class = "formbutton">
            </form>
        </td>
        <td><c:out value='${item.product.description}'/></td>
        <td>${item.product.price}</td>
        
        <td>
            <form action="" method="post" class = "formstyle">
                <input type="hidden" name="productCode" 
                       value="<c:out value='${item.product.sku}'/>">
                <input type="hidden" name="quantity" value="0">
                <input type="submit" value="Remove Item" class = "formbutton">
            </form>
        </td>
      </tr>
      </c:forEach>
    </table>

    <p><b>To change the quantity</b>, enter the new quantity 
        and click on the Update button.</p>

    <form action="" method="post" class = "formstyle">
        <input type="hidden" name="change" value="shop">
        <input type="submit" value="Continue Shopping" class = "formbutton">
    </form>

    <form action="" method="post" class = "formstyle">
        <input type="hidden" name="change" value="checkout">
        <input type="submit" value="Checkout" class = "formbutton">
    </form>
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