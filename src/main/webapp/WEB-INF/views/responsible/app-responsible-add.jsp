
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Responsible form</title>
    <style type="text/css">
        .error {
            color: red;
        }
    </style>
</head>
<body>
<button type="button" onclick="location.href='/app'">User Panel</button><br/><br/>

    <form:form method="post" modelAttribute="responsible">
        First name: <form:input path="firstName" /><br/>
        <form:errors path="firstName" cssClass="error"/><br/>
        Last name: <form:input path="lastName" /><br/>
        <form:errors path="lastName" cssClass="error"/><br/>
        Employee code: <form:input path="employeeCode" /><br/>
        <form:errors path="employeeCode" cssClass="error"/><br/>
        Email: <form:input path="email" /><br/>
        <form:errors path="email" cssClass="error"/><br/>
        Phone number: <form:input path="phoneNo" /><br/>
        <form:errors path="phoneNo" cssClass="error"/><br/>
            <%--password????--%>
        Department: <form:select path="department">
                    <form:option value="" label=""/>
                    <form:options items="${allDepts}" itemLabel="name" itemValue="id"/>
                    </form:select><br/>
        <form:errors path="department" cssClass="error"/><br/>
        <input type="submit" value="Save Responsible Person">
    </form:form>
</body>
</html>

