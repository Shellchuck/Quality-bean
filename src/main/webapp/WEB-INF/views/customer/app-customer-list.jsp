
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
    Customers:<br><hr>
    <button type="button" onclick="location.href='/customer/add'">Add new customer</button>
    <table border="1">
        <tr>
            <th scope="col">First name</th>
            <th scope="col">Customer Address</th>
<%--            <th scope="col">Contact details</th>--%>
<%--            <th scope="col">Contact Email</th>--%>
<%--            <th scope="col">Contact Phone number</th>--%>
            <th></th>
        </tr>
        <c:forEach var="customer" items="${allCustomers}">
        <tr>
            <td><c:out value="${customer.name}"/></td>
            <td><c:out value="${customer.address}"/></td>
<%--            <td><c:out value="${customer.contactName}"/></td>--%>
<%--            <td><c:out value="${customer.email}"/></td>--%>
<%--            <td><c:out value="${customer.phoneNo}"/></td>--%>
            <td><button type="button" onclick="location.href='/customer/details/${customer.id}'">Customer details</button></td>
        </tr>
        </c:forEach>
    </table>
        <hr>
</body>
</html>
