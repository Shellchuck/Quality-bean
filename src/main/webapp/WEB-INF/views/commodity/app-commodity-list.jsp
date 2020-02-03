
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Commodity List</title>
</head>
<body>
    Commodity List:<br><hr>
    <button type="button" onclick="location.href='/commodity/add'">Add new commodity</button><br/>
    <table border="1">
        <tr>
            <th scope="col">Commodity name</th>
            <th scope="col">Reference code</th>
            <th scope="col">Technical specification</th>
            <th scope="col">Revision date</th>
            <th scope="col">Category</th>
            <th></th>
        </tr>
        <c:forEach items="${allComm}" var="commodity">
        <tr>
            <td><c:out value="${commodity.commodityName}"/></td>
            <td><c:out value="${commodity.referenceCode}"/></td>
            <td><c:out value="${commodity.technicalSpec}"/></td>
            <td><c:out value="${commodity.revisionDate}"/></td>
            <td><c:out value="${commodity.category.categoryName}"/></td>
            <td><button type="button" onclick="location.href='/commodity/change/${commodity.id}'">Edit commodity</button>&nbsp;
            <button type="button" onclick="location.href='/commodity/delete/${commodity.id}'">Delete commodity</button></td>
        </tr>
        </c:forEach>
    </table>
        <hr>
</body>
</html>
