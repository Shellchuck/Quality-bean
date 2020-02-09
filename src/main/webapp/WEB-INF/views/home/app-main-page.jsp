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

    <title>Quality Bean - Dashboard</title>

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

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
            <div class="sidebar-brand-text mx-3">Quality Bean</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item">
            <a class="nav-link" href="/app">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>User Panel</span></a>
        </li>
        <!-- Divider -->
        <hr class="sidebar-divider">

        <li class="nav-item">
            <a class="nav-link" href="/app/claim/list">
                <i class="fas fa-fw fa-folder"></i>
                <span>Claims</span></a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="/app/analysis/list">
                <i class="fas fa-fw fa-folder"></i>
                <span>Analyses</span></a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="/app/customer/list">
                <i class="fas fa-fw fa-folder"></i>
                <span>Customers</span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/app/commodity/list">
                <i class="fas fa-fw fa-folder"></i>
                <span>Commodities</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

    </ul>
    <!-- End of Sidebar -->

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

                <%--                <!-- Topbar Search -->--%>
                <%--                <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">--%>
                <%--                    <div class="input-group">--%>
                <%--                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">--%>
                <%--                        <div class="input-group-append">--%>
                <%--                            <button class="btn btn-primary" type="button">--%>
                <%--                                <i class="fas fa-search fa-sm"></i>--%>
                <%--                            </button>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </form>--%>

                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">

                    <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                    <li class="nav-item dropdown no-arrow d-sm-none">
                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search fa-fw"></i>
                        </a>
                        <!-- Dropdown - Messages -->
                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                            <form class="form-inline mr-auto w-100 navbar-search">
                                <div class="input-group">
                                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fas fa-search fa-sm"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>

                    <div class="topbar-divider d-none d-sm-block"></div>

                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">Name Surname</span>
                            <%--                            <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">--%>
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                Profile
                            </a>
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                Settings
                            </a>
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                Activity Log
                            </a>
                            <div class="dropdown-divider"></div>
                            <div align="center">
                            <form action="<c:url value="/logout"/>" method="post">
                                <input type="submit" value="Log Out">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            </form>
                            </div>
                        </div>
                    </li>

                </ul>

            </nav>

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <%--<c:if test="${not empty message}">
                    <div class="alert alert-success">
                            ${message}
                    </div>
                </c:if>--%>
                <c:if test="${not empty delayedClaims}">
                    <div class="alert alert-warning">
                        <p>Alert!! Delayed responses present for following claims:</p>
                        <c:forEach items="${delayedClaims}" var="delayedClaim">
                            <a href="/app/claim/details/${delayedClaim.id}">${delayedClaim.issueNo}<br/>
                        </c:forEach>
                    </div>
                </c:if>

                <!-- Page Heading -->

                <p align="left" class="mb-4"><a href="/app/claim/add" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">Add new claim</a></p>

                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Recently added claims</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <tr>
                                    <th scope="col">Issue Number</th>
                                    <th scope="col">Customer</th>
                                    <th scope="col">Commodities</th>
                                    <th scope="col">Description</th>
                                    <th scope="col">Claimed quantity</th>
                                    <th scope="col">Created on</th>
                                    <th style="text-decoration: " scope="col">Actions</th>
                                </tr>
                                <c:forEach var="claim" items="${recentClaims}">
                                    <tr>
                                        <td><c:out value="${claim.issueNo}"/></td>
                                        <td><c:out value="${claim.customer.name}"/></td>
                                        <td>
                                            <c:forEach items="${claim.commodities}" var="commodity">
                                                <c:out value="${commodity.commodityName}"/>
                                            </c:forEach>
                                        </td>
                                        <td><c:out value="${claim.description}"/></td>
                                        <td><c:out value="${claim.quantity}"/></td>
                                        <td><c:out value="${claim.createdOn.toString()}"/></td>
                                        <td><button type="button" onclick="location.href='/app/claim/details/${claim.id}'">Claim details</button></td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright &copy; Quality Bean 2020</span>
                </div>
            </div>
        </footer>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
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