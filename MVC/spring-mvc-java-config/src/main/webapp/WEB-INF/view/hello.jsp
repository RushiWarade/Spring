<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: rushi
  Date: 05-01-2024
  Time: 10:37 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello</title>
</head>
<body>
<h1>Hello Rushi</h1>


<%
    List<String> list =(List<String>) request.getAttribute("list");
    list.forEach(System.out::println);

%>

</body>
</html>
