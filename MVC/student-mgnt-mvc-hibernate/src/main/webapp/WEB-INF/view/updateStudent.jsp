<%--
  Created by IntelliJ IDEA.
  User: rushi
  Date: 17-01-2024
  Time: 09:54 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Profile</title>
    <%@include file="../resources/links.jsp"%>
</head>
<body>

import com.example.model.Student;<%@include file="../resources/nav.jsp"%>


<%
    Student getDetails = (Student) session.getAttribute("studentDetails");
%>


<div class="conatiner p-3">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-header text-center">
                    <h3>Update your Data</h3>
<%--
                    <%
                        String msg = (String) session.getAttribute("msg");

                        if (msg != null) {
                    %>
                    <p style="color: lightsalmon; font-style: italic" ><%=msg%>
                    </p>
                    <%
                        }
                        session.removeAttribute("msg");

                    %>--%>
                </div>
                <div class="card-body">
                    <form action="#" method="post">
                        <div class="mb-3">
                            <label for="fname">Enter First Name</label>
                            <input type="text" id="fname" value="<%=getDetails.getFname()%>"
                                   name="fname" class="form-control">
                        </div>
                        <div class="mb-3">
                            <labelam for="lname">Enter Last Name</labelam>
                            <input type="text" id="lname" value="<%=getDetails.getLname()%>"
                                   name="lname" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label for="email">Enter Email</label> <input type="text" name="email" id="email" value="<%=getDetails.getEmail()%>"
                                                                          class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="mobile">Enter Mobile Number</label> <input type="tel" name="mobile" id="mobile" value="<%=getDetails.getMobile()%>"
                                                                                   class="form-control">
                        </div>

                        <div class="mb-3">
                            <label for="address">Enter Address</label> <input type="text" name="address" id="address" value="<%=getDetails.getAddress()%>"
                                                                              class="form-control">
                        </div>
                        <button class="btn btn-primary col-md-12">Update</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
