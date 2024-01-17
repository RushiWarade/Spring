<%@ page import="com.example.model.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: rushi
  Date: 14-01-2024
  Time: 03:35 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show Student</title>
    <%@include file="../resources/links.jsp" %>
</head>
<body>
<%@include file="../resources/adminNav.jsp" %>

<%

    List<Student> studentList = (List<Student>) request.getAttribute("studentList");

    studentList.forEach(System.out::println);


%>


<div class="container p-3">
</div>
<table class="table table-striped table-hover">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">First</th>
        <th scope="col">Last</th>
        <th scope="col">Email</th>
        <th scope="col">Mobile</th>
        <th scope="col">Address</th>
    </tr>
    </thead>
    <tbody>


    <%
        int srNo = 1;
        for (int i = 0; i < studentList.size(); i++) {
            Student student = studentList.get(i);
    %>

    <tr>
        <th scope="row"><%=srNo%>
            <%srNo++;%>
        </th>
        <td><%=student.getFname()%>
        </td>
        <td><%=student.getLname()%>
        </td>
        <td><%=student.getEmail()%>
        </td>
        <td><%=student.getEmail()%>
        </td>
        <td><%=student.getAddress()%>
        </td>
    </tr>

    <%} %>

    </tbody>
</table>


<%@include file="../resources/adminNavScript.jsp" %>
</body>
</html>
