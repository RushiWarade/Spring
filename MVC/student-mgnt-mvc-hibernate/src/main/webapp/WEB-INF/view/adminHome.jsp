<%--
  Created by IntelliJ IDEA.
  User: rushi
  Date: 12-01-2024
  Time: 11:08 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
    <%@include file="../resources/links.jsp" %>
</head>
<body>
<%@include file="../resources/adminNav.jsp" %>


<div class="conatiner p-3">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-header text-center">
                    <h3>Login Page</h3>

                    <%
                        String msg = (String) session.getAttribute("msg");

                        if (msg != null) {
                    %>
                    <p style="color: lightsalmon; font-style: italic"><%=msg%>
                    </p>
                    <%
                        }
                        session.removeAttribute("msg");

                    %>

                </div>
                <div class="card-body">
                    <form action="userlogin" method="post">

                        <div class="mb-3">
                            <label for="email">Enter Email</label> <input type="text" name="email" id="email"
                                                                          class="form-control">
                        </div>

                        <div class="mb-3">
                            <label for="password">Enter Password</label> <input type="text" name="password"
                                                                                id="password"
                                                                                class="form-control">
                        </div>

                        <button class="btn btn-primary col-md-12">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<%@include file="../resources/adminNavScript.jsp" %>
</body>
</html>
