<%@ page import="static jdk.internal.org.jline.utils.Colors.s" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
    <%@include file="../resources/links.jsp" %>
</head>
<body class="bg-light">
<%@include file="../resources/nav.jsp" %>
<div class="conatiner p-3">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card shadow">
                <div class="card-header text-center">
                    <h3>Login Page</h3>

                    <%
                        String msg = (String) session.getAttribute("msg");

                        if (msg != null) {
                    %>
                    <p style="color: lightsalmon; font-style: italic" ><%=msg%>
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


</body>
</html>
