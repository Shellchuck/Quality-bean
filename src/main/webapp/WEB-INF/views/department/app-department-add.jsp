
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Department form</title>
    <style type="text/css">
        .error {
            color: red;
        }
    </style>
</head>
<body>
<button type="button" onclick="location.href='/app'">User Panel</button><br/><br/>

    <form:form method="post" modelAttribute="department">
        Department name: <form:input path="name" /><br/>
        <form:errors path="name" cssClass="error"/><br/>
        Department code: <form:input path="departmentCode" /><br/>
        <form:errors path="departmentCode" cssClass="error"/><br/>
        <input type="submit" value="Save Department">
    </form:form>
</body>
</html>
