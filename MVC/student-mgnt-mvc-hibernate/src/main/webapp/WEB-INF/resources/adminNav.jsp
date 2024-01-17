<%@ page import="com.example.model.Admin" %><%
    Admin admin =(Admin) session.getAttribute("adminData");

%>
<%--<div class="alert alert-warning alert-dismissible fade show" role="alert">--%>
<%--    <strong>Welcome <%=admin.getFirstName()%></strong> Successfully login.--%>
<%--    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>--%>
<%--</div>--%>

<div class="d-flex" id="wrapper">
    <!-- Sidebar -->
    <div class="bg-white" id="sidebar-wrapper">
        <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom"><i
                class="fas fa-user-secret me-2"></i>Alumni Management</div>
        <div class="list-group list-group-flush my-3">
            <a href="adminHome"
               class="list-group-item list-group-item-action bg-transparent second-text fw-bold active"><i
                    class="fas fa-tachometer-alt me-2"></i>Dashboard</a>

            <a href="showStudent"
               class="list-group-item list-group-item-action bg-transparent second-text fw-bold "> <i
                    class="fas fa-tachometer-alt me-2"></i>Show Student</a>
            <a href="registerAdmin"
               class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                    class="bi bi-person-fill-add"></i></i> Register New Admin </a>

            <a href="#"
               class="list-group-item list-group-item-action bg-transparent second-text fw-bold "><i
                    class="bi bi-person-check"></i></i> Aprove User</a>



            <a href="#"
               class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                    class="bi bi-person-exclamation"></i> User Information</a>
            <!-- <div class="list-group-item list-group-item-action bg-transparent second-text fw-bold"
                id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle second-text fw-bold" href="" id="navbarDropdown"
                            role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fas fa-gift me-2"></i>Event
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="create_event.php">Create Event</a></li>
                            <li><a class="dropdown-item" href="manage_event.php">Manage Event</a></li>
                            <li><a class="dropdown-item" href="gallary.php">Upload Event Photos</a></li>
                        </ul>
                    </li>
                </ul>
            </div> -->

            <a href="logout"
               class="list-group-item list-group-item-action bg-transparent text-danger fw-bold"><i
                    class="fas fa-power-off me-2"></i>Logout</a>
        </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">
        <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4">
            <div class="d-flex align-items-center">
                <i class="fas fa-align-left primary-text fs-4 me-3" id="menu-toggle"></i>
                <h2 class="fs-2 m-0">Dashboard</h2>
            </div>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle second-text fw-bold" href="#" id="navbarDropdown"
                           role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fas fa-user me-2"></i><b> Welcome -  <%=admin.getFirstName()%>
                        </b>

                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Profile</a></li>
                            <li><a class="dropdown-item" href="#">Settings</a></li>
                            <li><a class="dropdown-item" href="logout">Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <!-- write code from here -->