<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Quality Bean - Register</title>

    <!-- Custom fonts for this template-->
    <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<c:url value="/resources/css/sb-admin-2.min.css" />" rel="stylesheet">
    <style type="text/css">
        .error {
            color: red;
            font-size: 12px;
        }
    </style>
</head>

<body class="bg-gradient-primary">

<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <img src="<c:url value="/resources/img/skyscraper.jpg"/>">
                        <div class="col-lg-6">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Register</h1>
                                </div>

                                <form:form class="user" method="post" modelAttribute="responsible">
                                    <div class="form-group">
                                        <form:input path="firstName" class="form-control form-control-user"
                                                    placeholder="First name"/>
                                        <form:errors path="firstName" cssClass="error"/><br/>
                                    </div>
                                    <div class="form-group">
                                        <form:input path="lastName" class="form-control form-control-user"
                                                    placeholder="Last name"/>
                                        <form:errors path="lastName" cssClass="error"/><br/>
                                    </div>
                                    <div class="form-group">
                                        <form:input path="employeeCode" class="form-control form-control-user"
                                                    placeholder="Employee code"/>
                                        <form:errors path="employeeCode" cssClass="error"/><br/>
                                    </div>
                                    <div class="form-group">
                                        <form:input path="email" class="form-control form-control-user"
                                                    placeholder="Email"/>
                                        <form:errors path="email" cssClass="error"/><br/>
                                    </div>
                                    <div class="form-group">
                                        <form:input path="phoneNo" class="form-control form-control-user"
                                                    placeholder="Phone number"/>
                                        <form:errors path="phoneNo" cssClass="error"/><br/>
                                    </div>
                                    <div class="form-group">
                                        <form:input path="username" class="form-control form-control-user"
                                                    placeholder="Username"/>
                                        <form:errors path="username" cssClass="error"/><br/>
                                    </div>
                                    <div class="form-group">
                                        <form:input path="password" class="form-control form-control-user"
                                                    placeholder="Password"/>
                                        <form:errors path="password" cssClass="error"/><br/>
                                    </div>
                                    <div>
                                        <h6>Select department</h6>
                                    </div>
                                    <div class="form-group">
                                        <form:select path="department" aria-describedby="emailHelp">
                                            <form:option value="" label=""/>
                                            <form:options items="${allDepts}" itemLabel="name" itemValue="id"/>
                                        </form:select><br/>
                                        <form:errors path="department" cssClass="error"/><br/>
                                    </div>
                                    <div align="center">
                                        <input type="submit" value="Register">
                                    </div>
                                </form:form>

                                <hr>
                                <%--<div class="text-center">
                                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                                </div>--%>
                                <div class="text-center">
                                    <a class="small" href="<c:url value="/login" />">Already have an account? Login!</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>

<!-- Bootstrap core JavaScript-->
<script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
<!-- Core plugin JavaScript-->
<script src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js"/>"></script>
<!-- Custom scripts for all pages-->
<script src="<c:url value="/resources/js/sb-admin-2.min.js"/>"></script>
</body>

</html>

