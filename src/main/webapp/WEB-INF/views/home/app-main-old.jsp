
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>App Main Page</title>
</head>
<body>
<button type="button" onclick="location.href='/app'">User Panel</button><br/><br/>
<button type="button" onclick="location.href='/app/claim/list'">Claims</button><br/>
<button type="button" onclick="location.href='/app/analysis/list'">Analyses</button><br/>
<button type="button" onclick="location.href='/app/commodity/list'">Commodities</button><br/>
<button type="button" onclick="location.href='/app/customer/list'">Customers</button><br/><br/>
<button type="button" onclick="location.href='/app/claim/add'">Add new claim</button><br/>
<hr><br/>
<label>3 recently added claims</label><br/><br/>

<table border="1">
    <tr>
        <th scope="col">Issue Number</th>
        <th scope="col">Customer</th>
        <th scope="col">Commodities</th>
        <th scope="col">Description</th>
        <th scope="col">Claimed quantity</th>
        <th scope="col">Created on</th>
        <th></th>
    </tr>
    <c:forEach var="claim" items="${recentClaims}">
    <tr>
        <td><c:out value="${claim.issueNo}"/></td>
        <td><c:out value="${claim.customer.name}"/></td>
        <td>
            <c:forEach items="${claim.commodities}" var="commodity">
                <c:out value="${commodity.commodityName}"/>
            </c:forEach>
        </td>
        <td><c:out value="${claim.description}"/></td>
        <td><c:out value="${claim.quantity}"/></td>
        <td><c:out value="${claim.createdOn.toString()}"/></td>
        <td><button type="button" onclick="location.href='/app/claim/details/${claim.id}'">Claim details</button></td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
