
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home Page</title>
</head>
<body>
    <button type="button" onclick="location.href='/'">Home</button><br/><br/><hr>
    <h3><spring:message code="hello.message"/></h3><hr>
    <button type="button" onclick="location.href='/login'">Log in</button><br/>
    <button type="button" onclick="location.href='/create-user'">Sign up</button><br/>
    <button type="button" onclick="location.href='/'">About</button><br/>
    <button type="button" onclick="location.href='/'">Contact</button><br/>
</body>
</html>