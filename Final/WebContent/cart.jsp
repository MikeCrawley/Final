<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
    

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href ="css/stylesheet.css" rel = "stylesheet" type = "text/css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">


<title>Shop</title>
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
<h1>Cart</h1>
<br/>

<br />

<a href="shop">return to shopping</a> 
<br />

<table>
      <tr>
        <th>Quantity</th>
        <th>Description</th>
        <th>Price</th>
        <th>Amount</th>
        <th></th>
      </tr>
      <c:forEach var="item" items="${cart.items}">
${cart.items}
${item.product.sku}
      <tr>
        <td>
            <form action="commitcart" method="post">
               <c:set var="sku" value="${item.product.sku}" scope="session"  />
                <input type="hidden" name="sku" value="<c:out value='${item.product.sku}'/>">
                <input type=text name="cartLnQuantity" 
                       value="<c:out value='${item.cartLnQuantity}'/>">
                <input type="submit" name="trigger" value="update">
            </form>
        </td>
        <td><c:out value='${item.product.description}'/></td>
        <td><c:out value='${cartln.cartLnQuantity}'/>${item.cartLnQuantity}</td>
        <td>${item.product.price}</td>
        
        <td>
             ${product.sku}
            <form action="commitcart" method="post">
                <c:set var="sku" value="${item.product.sku}" scope="session"  />
              <input type="hidden" name="sku" value="<c:out value='${item.product.sku}'/>">
                <input type="submit" name="trigger" value="delete">
            </form>
        </td>
      </tr>
      </c:forEach>
    </table>
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