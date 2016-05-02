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
<img alt="" src="images/in.jpg">
<h1>Inventory Management - Add a Product</h1>

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
      Product Description:
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
      image name:
   </label>
   <input type=text name=imagename value="" />
   <br />
   <label>
      Product Quantity:
   </label>
   <input type=text name=quantity value="" />
   <br />
   <input type=submit name=submit value="Add the Product" />

</form>

</div>
<div id = "sidebar">
	<img src="images/Names2.png" style="width:150px;height:300px;">
</div>
<div id = "footer">This is the footer area</div>


</body>
</html>