<%--
  Created by IntelliJ IDEA.
  User: rushi
  Date: 15-01-2024
  Time: 09:43 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Login</title>
    <%@include file="../resources/links.jsp" %>
</head>
<body>
<div class="conatiner p-3">
    <div class="row">
        <div class="col-md-3 offset-md-4">
            <div class="card">
                <div class="card-header text-center">
                    <h3>Admin Login</h3>
                    <%
                        String msg = (String) session.getAttribute("adminMsg");

                        if (msg != null) {
                    %>
                    <p style="color: lightsalmon; font-style: italic"><%=msg%>
                    </p>
                    <%
                        }
                        session.removeAttribute("adminMsg");

                    %>
                </div>
                <div class="card-body">
                    <form action="adminLogin" method="post">


                        <div class="mb-3">
                            <label for="email">Enter Email</label> <input type="text" name="email" id="email"
                                                                          class="form-control">
                        </div>

                        <div class="mb-3">
                            <label for="pass">Enter Password</label> <input type="text" name="password" id="pass"
                                                                            class="form-control">
                        </div>

                        <button class="btn btn-primary col-md-12">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
