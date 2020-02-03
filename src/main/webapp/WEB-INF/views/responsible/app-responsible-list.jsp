
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Responsible List</title>
</head>
<body>
    Responsible List:<br><hr>
    <button type="button" onclick="location.href='/responsible/add'">Add new responsible</button>
    <table border="1">
        <tr>
            <th scope="col">First name</th>
            <th scope="col">Last name</th>
            <th scope="col">Employee code</th>
            <th scope="col">Email</th>
            <th scope="col">Phone number</th>
            <th scope="col">Department</th>
            <th></th>
        </tr>
        <c:forEach items="${allResp}" var="responsible">
        <tr>
            <td><c:out value="${responsible.firstName}"/></td>
            <td><c:out value="${responsible.lastName}"/></td>
            <td><c:out value="${responsible.employeeCode}"/></td>
            <td><c:out value="${responsible.email}"/></td>
            <td><c:out value="${responsible.phoneNo}"/></td>
            <td><c:out value="${responsible.department.name}"/></td>
            <td><button type="button" onclick="location.href='/responsible/change/${responsible.id}'">Edit Responsible Person</button>&nbsp;
            <button type="button" onclick="location.href='/responsible/delete/${responsible.id}'">Delete Responsible Person</button></td>
        </tr>
        </c:forEach>
    </table>
        <hr>
</body>
</html>
