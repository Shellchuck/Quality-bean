
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Department details</title>
</head>
<body>
Department Details:<br/>
<button type="button" onclick="location.href='/department/list'">Back to the list</button></td><br/>
<hr>
    <table border="1">
        <tr>
            <th scope="col">Department name</th>
            <th scope="col">Department code</th>
            <th></th>
        </tr>
        <tr>
            <td><c:out value="${department.name}"/></td>
            <td><c:out value="${department.departmentCode}"/></td>
            <td><button type="button" onclick="location.href='/department/change/${department.id}'">Edit department</button><br/>
            <button type="button" onclick="location.href='/department/delete/${department.id}'">Delete department</button></td>
        </tr>
    </table>
        <hr>
</body>
</html>
