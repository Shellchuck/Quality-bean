
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Analysis form</title>
    <style type="text/css">
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <form:form method="post" modelAttribute="analysis">
        Analysis code: <form:input path="analysisCode" /><br/>
        <form:errors path="analysisCode" cssClass="error"/><br/>
        Defect type: <form:select path="defect" items="${allDefects}" itemValue="id" itemLabel="name"/><br/>
        <form:errors path="defect" cssClass="error"/><br/>
        Responsible Person for Analysis: <form:select path="responsible" items="${allResponsibles}" itemValue="id" itemLabel="fullName"/><br/>
        <form:errors path="responsible" cssClass="error"/><br/>
        Containment actions: <form:textarea rows="10" cols="40"  path="containment" /><br/>
        <form:errors path="containment" cssClass="error"/><br/>
        Containment implementation: <form:input path="containmentDate" placeholder="yyyy-MM-dd"/><br/>
        <form:errors path="containmentDate" cssClass="error"/><br/>
        Root cause description: <form:textarea rows="10" cols="40" path="rootCause"/><br/>
        <form:errors path="rootCause" cssClass="error"/><br/>
        Corrective actions: <form:textarea rows="10" cols="40" path="correctiveActions"/><br/>
        <form:errors path="correctiveActions" cssClass="error"/><br/>
        Corrective actions implementation: <form:input path="correctiveDate" placeholder="yyyy-MM-dd"/><br/>
        <form:errors path="correctiveDate" cssClass="error"/><br/>
        Verification of actions: <form:textarea rows="10" cols="40" path="verification"/><br/>
        <form:errors path="verification" cssClass="error"/><br/>
        Verification date: <form:input path="verificationDate" placeholder="yyyy-MM-dd"/><br/>
        <form:errors path="verificationDate" cssClass="error"/><br/>

        <input type="submit" value="Save Claim">
    </form:form>

</body>
</html>
