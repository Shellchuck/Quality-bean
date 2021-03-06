<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

    <title>Quality Bean - Claim form</title>

    <!-- Custom fonts for this template-->
    <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css" />" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<c:url value="/resources/css/sb-admin-2.min.css" />" rel="stylesheet">
    <![endif]-->
    <style type="text/css">
        .error {
            color: red;
            font-size: 12px;
        }
    </style>
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

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button onclick="location.href='/app'" class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

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
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <!-- Page Heading -->

                <!-- DataTales Example -->
                <div class="card shadow mb-4">




                    <!-- Outer Row -->
                    <div class="row justify-content-center">

                        <div class="col-xl-10 col-lg-12 col-md-9">

                            <div class="card o-hidden border-0 shadow-lg my-5">
                                <div class="card-body p-0">
                                    <!-- Nested Row within Card Body -->
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="p-5">
                                                <div class="text-center">
                                                    <h1 class="h4 text-gray-900 mb-4">Claim register</h1>
                                                </div>

                                                <form:form method="post" modelAttribute="claim">
                                                <div class="form-group">
                                                    <form:input path="issueNo" placeholder="Issue Number"/><br/>
                                                    <form:errors path="issueNo" cssClass="error"/>
                                                </div>
                                                <div>
                                                    <h6>Select customer</h6>
                                                </div>
                                                <div class="form-group">
                                                    <form:select path="customer" items="${allCustomers}" itemValue="id" itemLabel="name"/>
                                                    <form:errors path="customer" cssClass="error"/><br/>
                                                </div>
                                                <div>
                                                    <h6>Select commodities</h6>
                                                </div>
                                                <div class="form-group">
                                                    <form:select path="commodities" items="${allCommodities}" itemValue="id" itemLabel="commodityName"/><br/>
                                                    <form:errors path="commodities" cssClass="error"/><br/>
                                                </div>
                                                    <div>
                                                        <h6>Description</h6>
                                                    </div>
                                                <div class="form-group">
                                                    <form:textarea rows="10" cols="40" path="description" />
                                                    <form:errors path="description" cssClass="error"/><br/>
                                                </div>
                                                <div class="form-group">
                                                    <form:input type="number" min="0" path="quantity" placeholder="Claimed quantity" />
                                                    <form:errors path="quantity" cssClass="error"/><br/>
                                                </div>
                                                    Recurrence: <form:checkbox path="recurrence" />
                                                    <form:errors path="recurrence" cssClass="error"/><br/>
                                                <div>
                                                    <h6>Notification date</h6>
                                                </div>
                                                <div class="form-group">
                                                    <form:input path="claimDate" placeholder="yyyy-MM-dd"/>
                                                    <form:errors path="claimDate" cssClass="error"/><br/>
                                                </div>
                                                <div>
                                                    <h6>Closure date</h6>
                                                </div>
                                                <div class="form-group">
                                                    <form:input path="closeDate" placeholder="yyyy-MM-dd"/>
                                                    <form:errors path="closeDate" cssClass="error"/><br/>
                                                </div>
                                                <div>
                                                    <h6>Responsible Person for Claim management</h6>
                                                </div>
                                                <div class="form-group">
                                                    <form:select path="responsible" items="${allResponsibles}" itemValue="id" itemLabel="fullName"/>
                                                    <form:errors path="responsible" cssClass="error"/><br/>
                                                </div>
                                                <div>
                                                    <h6>Current status</h6>
                                                </div>
                                                <div class="form-group">
                                                    <form:select path="status" items="${allStatuses}" itemValue="id" itemLabel="status"/>
                                                    <form:errors path="status" cssClass="error"/><br/>
                                                </div>
                                                    <form:hidden path="analyses"/>
                                                    <form:hidden path="createdOn"/>
                                                    <div align="center">
                                                    <input type="submit" value="Save Claim">
                                                    </div>
                                                </form:form>
                                            </div>
                                        </div>
<%--                                    <img src="<c:url value="/resources/img/skyscraper.jpg"/>">--%>
                                    </div>
                                </div>
                            </div>
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























<%--<head>
    <title>Claim form</title>
    <style type="text/css">
        .error {
            color: red;
        }
    </style>
</head>
<body>
<button type="button" onclick="location.href='/app'">User Panel</button><br/><br/>

    <form:form method="post" modelAttribute="claim">
        Issue Number: <form:input path="issueNo" /><br/>
        <form:errors path="issueNo" cssClass="error"/><br/>
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
        Responsible Person for Claim management: <form:select path="responsible" items="${allResponsibles}" itemValue="id" itemLabel="fullName"/><br/>
        <form:errors path="responsible" cssClass="error"/><br/>
        Current status: <form:select path="status" items="${allStatuses}" itemValue="id" itemLabel="status"/><br/>
        <form:errors path="status" cssClass="error"/><br/>
        <c:hidden path="analyses"/>
        <form:hidden path="createdOn"/>
        <input type="submit" value="Save Claim">
    </form:form>

</body>
</html>--%>
