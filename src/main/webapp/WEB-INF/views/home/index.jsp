
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib tagdir="/WEB-INF/tags/util" prefix="util" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Quality Bean - Main page</title>

    <!-- Custom fonts for this template-->
    <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css" />" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<c:url value="/resources/css/sb-admin-2.min.css" />" rel="stylesheet">
    <![endif]-->

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">



    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>
                &nbsp;&nbsp;
                <p class="mb-4"><a href="/login" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">Log in</a></p>&nbsp;&nbsp;
                <p class="mb-4"><a href="/create-user" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">Sign in</a></p>&nbsp;&nbsp;
                <p class="mb-4"><a href="/" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">About</a></p>&nbsp;&nbsp;
                <p class="mb-4"><a href="/" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">Contact</a></p>&nbsp;&nbsp;
            </nav>

            <!-- Begin Page Content -->
            <div align="center" class="container-fluid">
                <!-- Page Heading -->
                <br/>
                <p  class="mb-4"><h1>Quality Bean</h1></p>
            </div>

        </div>
        <!-- End of Main Content -->

        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-19">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <img src="<c:url value="/resources/img/project.jpg"/>">
                            <div class="col-lg-8">
                                <div class="p-4">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">This application is designed to efficiently support management of official claims and notifications issued by customers within production processes.</h1>
                                    </div>

                                    <span>No matter you if you run a one-man business or you are a manager of a large quality department, this application will help you to store all needed quality data in one place and will provide a most common analysis tools in a easy to use process approach.</span>
                                </div>

                                <hr>
                                <%--<div class="text-center">
                                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                                </div>--%>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
</div>

        <!-- Footer -->

        <footer  class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright &copy; Quality Bean 2020</span>
                </div>
            </div>
        </footer>


        <!-- End of Footer -->


    <!-- End of Content Wrapper -->


<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Bootstrap core JavaScript-->
<script src="<c:url value="/resources/vendor/jquery/jquery.min.js" />"></script>
<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>

<!-- Core plugin JavaScript-->
<script src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js" />"></script>

<!-- Custom scripts for all pages-->
<script src="<c:url value="/resources/js/sb-admin-2.min.js" />"></script>


</body>

</html>








