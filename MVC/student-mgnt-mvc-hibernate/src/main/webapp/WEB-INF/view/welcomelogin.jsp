<%@ page import="com.example.model.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Student checkLogin = (Student) session.getAttribute("data");
    String sucess = (String) session.getAttribute("success");
   /* if (checkLogin == null) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("login");
        requestDispatcher.forward(request,response);
    }*/


%>
<html>
<head>
    <title>Student login  <%=checkLogin.getFname()%>
    </title>
    <%@include file="../resources/links.jsp" %>
</head>
<body>
<%@include file="../resources/nav.jsp" %>

<%
    if (sucess != null) {
%>
<p style="color: lightsalmon; font-style: italic" ><%=sucess%>
</p>
<%}session.removeAttribute("msg");%>

<h1>Welcome: <%=checkLogin.getFname()%>
</h1>


</body>
</html>
