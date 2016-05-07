<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link href ="css/stylesheet.css" rel = "stylesheet" type = "text/css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
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
	<div class = "p">
	<p>
		Born 20 years apart, both Mike and Ryan were orphaned as boys. Mike grew up selling newspapers
		as a Newsie in the streets of New York and making ends meets by boxing on the weekend.  Although he
		had the chance to go professional he decided to spend the first part of his adult years traveling 
		the country side.
	</p>
	<img class = "aboutus" alt="Actual Photo" src="images/train.jpg">
	<p>
		Ryan made his way on the beaches of California, surfing by day and selling coconut drinks to 
		tourist at night.  While it seemed exotic for the tourists he struggled with the fact that he had 
		to use the same shells over and over because there were no actual coconut trees near his beach.  
		Finally, once old enough to see over the counter at the train station he decided it was time to see
		what land looked like without water.
	</p>
	<p>
		Mike and Ryan met while riding the trains and soon learned that not only were both of them orphans, they
		were left as babies wrapped in their Mother's scarves.  This would be the seed that eventually 
		created the number 1 scarf store in the world.  Enroll today and see why the experts are saying "This is
		the best thing to happen to mankind since the discovery of fire!"
	</p>
	</div>
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