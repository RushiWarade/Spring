<%@ page import="com.example.model.Student" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
    <%@include file="../resources/links.jsp" %>
</head>
<body class="bg-light">
<%@include file="../resources/nav.jsp"%>
<%
    Student studentData = (Student) request.getAttribute("studentDetails");
%>

<div class="conatiner p-3">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card shadow">
                <div class="card-header text-center">
                    <h3>Profile</h3>
                </div>
                <div class="card-body">
                    <table>
                        <tr>
                            <th>Name:</th>
                            <td><%=studentData.getFname()%>  <%=studentData.getLname()%>
                            </td>
                        </tr>
                        <tr>
                            <th>Email:</th>
                            <td><%=studentData.getEmail()%>
                            </td>
                        </tr>
                        <tr>
                            <th>Mobile:</th>
                            <td><%=studentData.getMobile()%>
                            </td>
                        </tr>
                        <tr>
                            <th>Address</th>
                            <td><%=studentData.getAddress()%>
                            </td>
                        </tr>
                    </table>
                    <div class="text-center mt-2">
                        Update your profile <a href="updateProfile">Update now</a>
                    </div>


                    <%--<div class="mb-3">
                        Name:<%=studentData.getFname()%>  <%=studentData.getLname()%>
                    </div>

                    <div class="mb-3">
                        Email:<%=studentData.getEmail()%>
                    </div>
                    <div class="mb-3">
                        Mobile:<%=studentData.getMobile()%>
                    </div>

                    <div class="mb-3">
                        Address:<%=studentData.getAddress()%>
                    </div>--%>


                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
