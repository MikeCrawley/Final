<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account Home</title>
</head>
<body>

<h1>Welcome, ${user.username}!</h1>
<p>You have successfully logged in, congratulations.<br>


${table}



<p>
Click <a href="CartServlet">here to view cart</a>
</p>

<p>
Click <a href=cart.jsp>here to view cartJSP</a>
</p>

<p>
Click <a href="checkout">here to checkout</a>
</p>



<p>
Click <a href="Login?logout=true">here</a> to log back out.
</p>


</body>
</html>