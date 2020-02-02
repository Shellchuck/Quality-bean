<%--
  Created by IntelliJ IDEA.
  User: marek
  Date: 13.01.2020
  Time: 22:11
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quality Shellchuck:</title>
    <link rel="stylesheet" href="<c:url value="/css/style.css"></c:url>"/>
</head>
<body>
<table>
<%--    <c:forEach var="claim" items="${claim}">--%>
    <tr>
        <th class="claim th"><label>Customer's issue number:</label></th>
        <td>${claim.issueNo}</td>
    </tr>
    <tr>
        <th class="claim th">Description of claim:</th>
        <td>${claim.description}</td>
    </tr>
    <tr>
        <th class="claim th">Rejected Quantity:</th>
        <td>${claim.quantity}</td>
    </tr>
    <tr>
        <th class="claim th">Claim recurrence:</th>
        <td>${claim.recurrence}</td>
    </tr>
    <tr>
        <th class="claim th">Created notification on:</>
        <td>${claim.created}</td>
    </tr>
    <tr>
        <th class="claim th">Last update:</th>
        <td>${claim.updated}</td>
    </tr>
    <tr>
        <th class="claim th">Date of claim:</th>
        <td>${claim.claimDate}</td>
    </tr>
    <tr>
        <th class="claim th">Date of claim closure:</th>
        <td>${claim.closeDate}</td>
    </tr>
<%--    </c:forEach>--%>
</table>

</body>
</html>
