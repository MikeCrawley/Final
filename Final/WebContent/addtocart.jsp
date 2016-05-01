<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ page import="model.Product" %>
    
<% Product product = (Product) request.getAttribute("product"); %>    

    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<link rel="stylesheet" type="text/css" href='css/grocery.css' />
<title>Add to Cart</title>
</head>
<body>

<h1>Add to cart</h1>
<c:set var="sku" value="${product.sku}" scope="session"  />
<form name=addtocart action=commitcart method=get >

    <label>
      Product Sku:
   </label>
   ${product.sku}
   <br />
 
     <label>
      Product Type
   </label>
   ${product.productType}
   <br />
   <label>
      Product Description:
   </label>
   ${product.description}
   <br />
   
   <label>
      Product Cost:
   </label>
   ${product.price}
   <br />
   
      
   <label>
      How many would you like to purchase?
   </label>
   <input type=text name=cartLnQuantity value="${cartln.cartLnQuantity}" />
   <br />
   <input type=submit name=submit value="addtocart" />
     
</form>
<p>
  <a href="shop">return to shopping</a>
</p>
</div>
</body>
</html>