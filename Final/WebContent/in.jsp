<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link href ="css/stylesheet.css" rel = "stylesheet" type = "text/css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account Home</title>
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
<h1>Welcome, ${user.username}!</h1>
<p>You have successfully logged in, congratulations.<br>


${table}


<p>
Click <a href=cart.jsp>here to view cart</a>
</p>

<p>
Click <a href="checkout">here to checkout</a>
</p>



<p>
Click <a href="Login?logout=true">here</a> to log back out.
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