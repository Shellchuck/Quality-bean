
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Commodity form</title>
    <style type="text/css">
        .error {
            color: red;
        }
    </style>
</head>
<body>
<button type="button" onclick="location.href='/app'">User Panel</button><br/><br/>

    <form:form method="post" modelAttribute="commodity">
        Commodity name: <form:input path="commodityName" /><br/>
        <form:errors path="commodityName" cssClass="error"/><br/>
        Reference code: <form:input path="referenceCode" /><br/>
        <form:errors path="referenceCode" cssClass="error"/><br/>
        Technical specification: <form:input path="technicalSpec" /><br/>
        <form:errors path="technicalSpec" cssClass="error"/><br/>
        Revision date: <form:input path="revisionDate" placeholder="yyyy-MM-dd"/><br/>
        <form:errors path="revisionDate" cssClass="error"/><br/>
        Category: <form:select path="category" items="${allCategories}" itemLabel="categoryName" itemValue="id"/><br/>
        <form:errors path="category" cssClass="error"/><br/>
        <input type="submit" value="Save Commodity">
    </form:form>
</body>
</html>
