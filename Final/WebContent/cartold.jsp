<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
    

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">




<title>shop</title>
</head>
<body>

<br/>
<h1>cart</h1>
<br/>
${cart}
<br />
<a href=in.jsp>return to shopping</a> 
<br />

<table>
      <tr>
        <th>Quantity</th>
        <th>Description</th>
        <th>Price</th>
        <th>Amount</th>
        <th></th>
      </tr>
      <c:forEach var="item" items="${cart.items}">

      <tr>
        <td>
            <form action="" method="post">
                <input type="hidden" name="productCode" 
                       value="<c:out value='${item.product.sku}'/>">
                <input type=text name="quantity" 
                       value="<c:out value='${item.cartLnQuantity}'/>"  
                       id="quantity">
                <input type="submit" value="Update">
            </form>
        </td>
        <td><c:out value='${item.product.description}'/></td>
        <td>${item.product.price}</td>
        
        <td>
            <form action="" method="post">
                <input type="hidden" name="productCode" 
                       value="<c:out value='${item.product.sku}'/>">
                <input type="hidden" name="quantity" value="0">
                <input type="submit" value="Remove Item">
            </form>
        </td>
      </tr>
      </c:forEach>
    </table>

    <p><b>To change the quantity</b>, enter the new quantity 
        and click on the Update button.</p>

    <form action="" method="post">
        <input type="hidden" name="change" value="shop">
        <input type="submit" value="Continue Shopping">
    </form>

    <form action="" method="post">
        <input type="hidden" name="change" value="checkout">
        <input type="submit" value="Checkout">
    </form>

</body>
</html>