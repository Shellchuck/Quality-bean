
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags/util" prefix="util" %>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
<button type="button" onclick="location.href='/app'">User Panel</button><br/><br/>

    Customers:<br><hr>
    <button type="button" onclick="location.href='/app/customer/add'">Add new customer</button><br/><br/>

    <c:if test="${not empty message}">
        <div class="alert alert-success">
                ${message}
        </div>
    </c:if>
    <br/>
    <table border="1">
        <tr>
            <th scope="col">First name</th>
            <th scope="col">Customer Address</th>
            <th></th>
        </tr>
        <c:forEach var="customer" items="${allCustomers}">
        <tr>
            <td><c:out value="${customer.name}"/></td>
            <td><c:out value="${customer.address}"/></td>
            <td><button type="button" onclick="location.href='/app/customer/details/${customer.id}'">Customer details</button></td>
        </tr>
        </c:forEach>
    </table>
        <hr>
</body>
</html>
