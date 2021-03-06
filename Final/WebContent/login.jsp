<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link href ="css/stylesheet.css" rel = "stylesheet" type = "text/css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
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
<div id = "content">
	<form id="loginForm" action="Login" method="POST" class = "formstyle">
		<h1>Log In</h1>
		<p>Please enter your email address</p>
		<input type="text" name="useremail" placeholder="Username" required><br>
		<p>Please enter password</p>
		<input type="password" name="password" placeholder ="Password" required><br>
		<input type="submit" value="Login" class = "formbutton"><br>
		${errorMessage}
	</form>

<p class = "pstyle">Please click here to enroll
<a href=enroll.jsp >Enroll</a>
</p>
</div>
<div id = "sidebar">
	
	
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