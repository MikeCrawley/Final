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

<br />

<a href="shop">return to shopping</a> 
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
${cart.items}
${item.product.sku}
      <tr>
        <td>
            <form action="commitcart" method="post">
               <c:set var="sku" value="${item.product.sku}" scope="session"  />
                <input type="hidden" name="sku" value="<c:out value='${item.product.sku}'/>">
                <input type=text name="cartLnQuantity" 
                       value="<c:out value='${item.cartLnQuantity}'/>">
                <input type="submit" name="trigger" value="update">
            </form>
        </td>
        <td><c:out value='${item.product.description}'/></td>
        <td><c:out value='${cartln.cartLnQuantity}'/>${item.cartLnQuantity}</td>
        <td>${item.product.price}</td>
        
        <td>
             ${product.sku}
            <form action="commitcart" method="post">
                <c:set var="sku" value="${item.product.sku}" scope="session"  />
              <input type="hidden" name="sku" value="<c:out value='${item.product.sku}'/>">
                <input type="submit" name="trigger" value="delete">
            </form>
        </td>
      </tr>
      </c:forEach>
    </table>



</body>
</html>