
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Analysis List</title>
</head>
<body>
<button type="button" onclick="location.href='/app'">User Panel</button><br/><br/>

    Analyses:<br><hr>
<%--    <button type="button" onclick="location.href='/app/claim/add'">Add new analyse</button><br/>--%>
    <table border="1">
        <tr>
            <th scope="col">Analysis Code</th>
            <th scope="col">Defect Type</th>
            <th scope="col">Responsible person for analysis</th>
            <th scope="col">Claim code</th>
            <th></th>
        </tr>
        <c:forEach var="analysis" items="${allAnalyses}">
        <tr>
            <td><c:out value="${analysis.analysisCode}"/></td>
            <td><c:out value="${analysis.defect.name}"/></td>
            <td><c:out value="${analysis.responsible.fullName}"/></td>
            <td><a href="/app/claim/details/${analysis.claim.id}">${analysis.claim.issueNo}</a></td>
            <td><button type="button" onclick="location.href='/app/analysis/details/${analysis.id}'">Analysis details</button></td>
        </tr>
        </c:forEach>
    </table>
        <hr>
</body>
</html>
