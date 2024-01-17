<%@ page import="com.example.model.Student" %>
<nav class="navbar navbar-expand-lg " style="background-color: #e3f2fd;>
    <div class=" container-fluid
">
<a class="navbar-brand" href="#">Navbar</a>
<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbarSupportedContent">
    <%
        Student student = (Student) session.getAttribute("data");
        if ((student == null)) {
    %>

    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="home">Home</a>
        </li>
    </ul>


    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="login">Login</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="signup">Signup</a>
        </li>
    </ul>
    <%}%>

    <%
        if (student != null) {
    %>
    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="welcomelogin">Home</a>
        </li>
    </ul>


    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="profile">Profile</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="logout">Logout</a>
        </li>
    </ul>

    <%}%>
</div>
</nav>