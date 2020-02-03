
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Commodity details</title>
</head>
<body>
Commodity Details:<br/>
<button type="button" onclick="location.href='/commodity/list'">Back to the list</button></td><br/>
<hr>
    <table border="1">
        <tr>
            <th scope="col">Commodity name</th>
            <th scope="col">Reference code</th>
            <th scope="col">Technical specification</th>
            <th scope="col">Revision date</th>
            <th scope="col">Category</th>
            <th></th>
        </tr>
        <tr>
            <td><c:out value="${commodity.commodityName}"/></td>
            <td><c:out value="${commodity.referenceCode}"/></td>
            <td><c:out value="${commodity.technicalSpec}"/></td>
            <td><c:out value="${commodity.revisionDate}"/></td>
            <td><c:out value="${commodity.category.categoryName}"/></td>
            <td><button type="button" onclick="location.href='/commodity/change/${commodity.id}'">Edit Commodity</button></td>
            <button type="button" onclick="location.href='/commodity/delete/${commodity.id}'">Delete commodity</button></td>
        </tr>
    </table>
        <hr>
</body>
</html>
