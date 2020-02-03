
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Claim List</title>
</head>
<body>
    Claims:<br><hr>
    <button type="button" onclick="location.href='/claim/add'">Add new claim</button><br/>
    <table border="1">
        <tr>
            <th scope="col">Issue Number</th>
            <th scope="col">Customer</th>
            <th scope="col">Commodities</th>
            <th scope="col">Description</th>
            <th scope="col">Claimed quantity</th>
<%--            <th scope="col">Recurrence</th>--%>
<%--            <th scope="col">Created</th>--%>
<%--            <th scope="col">Updated</th>--%>
<%--            <th scope="col">Notification date</th>--%>
<%--            <th scope="col">Closure date</th>--%>
<%--            <th scope="col">Responsible Person</th>--%>
<%--            <th scope="col">Current status</th>--%>
<%--            <th scope="col">Analyses</th>--%>
            <th></th>
        </tr>
        <c:forEach var="claim" items="${allClaims}">
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
<%--            <td><c:out value="${claim.recurrence}"/></td>--%>
<%--            <td><c:out value="${claim.createdOn}"/></td>--%>
<%--            <td><c:out value="${claim.updatedOn}"/></td>--%>
<%--            <td><c:out value="${claim.claimDate}"/></td>--%>
<%--            <td><c:out value="${claim.closeDate}"/></td>--%>
<%--            <td><c:out value="${claim.responsible.fullName}"/></td>--%>
<%--            <td><c:out value="${claim.status.status}"/></td>--%>
<%--            <td>--%>
<%--                <c:forEach items="${claim.analyses}" var="analyse">--%>
<%--                <c:out value="${analyse.analysisCode}"/>--%>
<%--                </c:forEach>--%>
<%--            </td>--%>
            <td><button type="button" onclick="location.href='/claim/details/${claim.id}'">Claim details</button></td>
        </tr>
        </c:forEach>
    </table>
        <hr>
</body>
</html>
