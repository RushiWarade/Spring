<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Signup Page</title>
    <%@include file="../resources/links.jsp" %>
</head>
<body>
<%@include file="../resources/nav.jsp" %>
<div class="conatiner p-3">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-header text-center">
                    <h3>Register Page</h3>

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
                    <form action="createUser" method="post">
                        <div class="mb-3">
                            <label for="fname">Enter First Name</label>
                            <input type="text" id="fname"
                                   name="fname" class="form-control">
                        </div>
                        <div class="mb-3">
                            <labelam for="lname">Enter Last Name</labelam>
                            <input type="text" id="lname"
                                   name="lname" class="form-control">
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
                            <label for="address">Enter Address</label> <input type="text" name="address" id="address"
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
</body>
</html>
