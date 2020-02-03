
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Claim form</title>
    <style type="text/css">
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <form:form method="post" modelAttribute="claim">
        Issue Number: <form:input path="issueNo" /><br/>
        <form:errors path="customer" cssClass="error"/><br/>
        Customer: <form:select path="customer" items="${allCustomers}" itemValue="id" itemLabel="name"/><br/>
        <form:errors path="customer" cssClass="error"/><br/>
        Commodities: <form:select path="commodities" items="${allCommodities}" itemValue="id" itemLabel="commodityName"/><br/>
        <form:errors path="commodities" cssClass="error"/><br/>
        Description: <form:textarea rows="10" cols="40" path="description" /><br/>
        <form:errors path="description" cssClass="error"/><br/>
        Claimed quantity: <form:input type="number" min="0" path="quantity" /><br/>
        <form:errors path="quantity" cssClass="error"/><br/>
        Recurrence: <form:checkbox path="recurrence" /><br/>
        <form:errors path="recurrence" cssClass="error"/><br/>
        Notification date: <form:input path="claimDate" placeholder="yyyy-MM-dd"/><br/>
        <form:errors path="claimDate" cssClass="error"/><br/>
        Closure date: <form:input path="closeDate" placeholder="yyyy-MM-dd"/><br/>
        <form:errors path="closeDate" cssClass="error"/><br/>
        Responsible Person for Analysis: <form:select path="responsible" items="${allResponsibles}" itemValue="id" itemLabel="fullName"/><br/>
        <form:errors path="responsible" cssClass="error"/><br/>
        Current status: <form:select path="status" items="${allStatuses}" itemValue="id" itemLabel="status"/><br/>
        <form:errors path="status" cssClass="error"/><br/>
        Analyses: <form:select path="analyses" items="${allAnalyses}" itemValue="id" itemLabel="analysisCode"/><br/>
        <form:errors path="analyses" cssClass="error"/><br/>
        <form:hidden path="createdOn"/>
        <input type="submit" value="Save Claim">
    </form:form>

</body>
</html>
