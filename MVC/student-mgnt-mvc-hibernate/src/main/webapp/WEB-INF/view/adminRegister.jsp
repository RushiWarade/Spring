<%--
  Created by IntelliJ IDEA.
  User: rushi
  Date: 15-01-2024
  Time: 09:59 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register Admin</title>
    <%@include file="../resources/links.jsp" %>
</head>
<body>
<%@include file="../resources/adminNav.jsp" %>
<div class="conatiner p-3">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-header text-center">
                    <h3>Register Page</h3>

                    <%
                        String msg = (String) session.getAttribute("adminRegister");

                        if (msg != null) {
                    %>
                    <p style="color: lightsalmon; font-style: italic"><%=msg%>
                    </p>
                    <%
                        }
                        session.removeAttribute("adminRegister");

                    %>
                </div>
                <div class="card-body">
                    <form action="createAdmin" method="post">
                        <div class="mb-3">
                            <label for="fname">Enter First Name</label>
                            <input type="text" id="fname"
                                   name="firstName" class="form-control">
                        </div>
                        <div class="mb-3">
                            <labelam for="lname">Enter Last Name</labelam>
                            <input type="text" id="lname"
                                   name="lastName" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label for="email">Enter Email</label> <input type="text" name="email" id="email"
                                                                          class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="mobile">Enter Mobile Number</label> <input type="tel" name="mobile" id="mobile"
                                                                                   class="form-control">
                        </div>


                        <div class="mb-3">
                            <label for="pass">Enter Password</label> <input type="text" name="password" id="pass"
                                                                            class="form-control">
                        </div>

                        <button class="btn btn-primary col-md-12">Register</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="../resources/adminNavScript.jsp" %>
</body>
</html>
