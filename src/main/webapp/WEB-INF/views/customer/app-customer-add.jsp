
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Customer form</title>
    <style type="text/css">
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <form:form method="post" modelAttribute="customer">
        Customer Name: <form:input path="name" /><br/>
        <form:errors path="name" cssClass="error"/><br/>
        Customer Address: <form:input path="address" /><br/>
        <form:errors path="address" cssClass="error"/><br/>
        Contact Personal Data: <form:input path="contactName" /><br/>
        <form:errors path="contactName" cssClass="error"/><br/>
        Contact Email: <form:input path="email" /><br/>
        <form:errors path="email" cssClass="error"/><br/>
        Contact Phone number: <form:input path="phoneNo" /><br/>
        <form:errors path="phoneNo" cssClass="error"/><br/>
        <input type="submit" value="Save Customer">
    </form:form>

</body>
</html>
