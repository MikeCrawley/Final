<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">





<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Please enter information </title>
</head>
<body>
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

</body>
</html>