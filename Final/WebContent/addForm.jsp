<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<link rel="stylesheet" type="text/css" href='css/grocery.css' />
<title>Inventory system - Add a Product</title>
</head>
<body>
<div id="centerstage">
<img alt="" src="images/in.jpg">
<h1>inventory management - Add a Product</h1>

<form name=addForm action=addProduct method=get >

   <label>
      Product SKU
   </label>
   <input type=text name=sku value="" />
   <br />
   
   <label>
      Product Type
   </label>
   <input type=text name=productType value="" />
   <br />
   <label>
      Product Flavor:
   </label>
   <input type=text name=description value="" />
   <br />
   
   <label>
      Product Cost:
   </label>
   <input type=text name=cost value="" />
   <br />
   
   <label>
      Product Price:
   </label>
   <input type=text name=price value="" />
   <br />
   
   <label>
      Product Quantity:
   </label>
   <input type=text name=quantity value="" />
   <br />
   <input type=submit name=submit value="Add the Product" />

</form>
</div>
</body>
</html>