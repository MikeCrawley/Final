<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
    
<%@ page import="model.Product" %>
    
<% Product product = (Product) request.getAttribute("product"); %>    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<link rel="stylesheet" type="text/css" href='css/grocery.css' />
<title> Update a product</title>
</head>
<body>

<h1>Inventory - Update a product</h1>
<div id="centerstage">
<img alt="" src="images/in.jpg">
<form name=updateForm action=updateProduct method=get >

    <label>
      Product Sku:
   </label>
   <input type=text name=sku value="${product.sku}" />
   <br />
 
     <label>
      Product Type
   </label>
   <input type=text name=productType value="${product.productType}" />
   <br />
   <label>
      Product description:
   </label>
   <input type=text name=description value="${product.description}" />
   <br />
   
   <label>
      Product Cost:
   </label>
   <input type=text name=cost value="${product.cost}" />
   <br />
   
   <label>
      Product Price:
   </label>
   <input type=text name=price value="${product.price}" />
   <br />
   <label>
      image name:
   </label>
   <input type=text name=imagename value="${product.imageName}" />
   <br />
   
   
   <label>
      Product Quantity:
   </label>
   <input type=text name=quantity value="${product.quantity}" />
   <br />
   <input type=submit name=submit value="Update the Product" />
     
</form>
<p>
  <a href="read">Exit without updating</a>
</p>
</div>
</body>
</html>