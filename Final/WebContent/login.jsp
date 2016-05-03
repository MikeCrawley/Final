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
	<form id="loginForm" action="Login" method="POST">
		<h1>Log In</h1>
		<p>Please enter your email address</p>
		<input type="text" name="useremail" placeholder="Username" required><br>
		<p>Please enter password</p>
		<input type="password" name="password" placeholder ="Password" required><br>
		<input type="submit" value="Login"><br>
		${errorMessage}
	</form>

<p>Please click here to enroll</p>
<a href=enroll.jsp >Enroll</a>
</div>
<div id = "sidebar">
	<img src="images/Names2.png" style="width:150px;height:300px;">
</div>
<div id = "footer">This is the footer area</div>


</body>
</html>