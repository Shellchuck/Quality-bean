
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Customer details</title>
</head>
<body>
    Customer Details:<br/>
    <button type="button" onclick="location.href='/customer/list'">Back to the list</button></td><br/>
    <hr>
    <table border="1">
        <tr>
            <th scope="col">First name</th>
            <th scope="col">Customer Address</th>
            <th scope="col">Contact details</th>
            <th scope="col">Contact Email</th>
            <th scope="col">Contact Phone number</th>
            <th scope="col">Claims</th>
            <th></th>
        </tr>
        <tr>
            <td><c:out value="${customer.name}"/></td>
            <td><c:out value="${customer.address}"/></td>
            <td><c:out value="${customer.contactName}"/></td>
            <td><c:out value="${customer.email}"/></td>
            <td><c:out value="${customer.phoneNo}"/></td>
            <td><c:out value=""/></td>
            <td><button type="button" onclick="location.href='/customer/change/${customer.id}'">Edit customer</button><br/>
            <button type="button" onclick="location.href='/customer/delete/${customer.id}'">Delete customer</button></td>
        </tr>
    </table>
        <hr>
</body>
</html>
