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
	<p>Please enter your information</p>
	<form action="enroll" method="get">
		<label>Please enter email address:</label>
		<input type="text" name="email" value="" >
		<br>
		<label>Please enter your user name:</label>
		<input type="text" name="username" value="" ><br>
		<label>Password:</label>
		<input type="password" name="password" ><br>
		<br>
			${errorMessage}
		<input type="submit" value="Enroll"  >

</form>
</div>
<div id = "sidebar">
	<img src="images/Names2.png" style="width:150px;height:300px;">
</div>
<div id = "footer">This is the footer area</div>


</body>
</html>