
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Department List</title>
</head>
<body>
<button type="button" onclick="location.href='/app'">User Panel</button><br/><br/>

    Department List:<br><hr>
    <button type="button" onclick="location.href='/app/department/add'">Add new department</button>
    <table border="1">
        <tr>
            <th scope="col">Department name</th>
            <th scope="col">Department code</th>
            <th></th>
        </tr>
        <c:forEach items="${allDepts}" var="department">
        <tr>
            <td><c:out value="${department.name}"/></td>
            <td><c:out value="${department.departmentCode}"/></td>
            <td><button type="button" onclick="location.href='/app/department/change/${department.id}'">Edit department</button><br/>
                <button type="button" onclick="location.href='/app/department/delete/${department.id}'">Delete department</button></td>
        </tr>
        </c:forEach>
    </table>
        <hr>
</body>
</html>
