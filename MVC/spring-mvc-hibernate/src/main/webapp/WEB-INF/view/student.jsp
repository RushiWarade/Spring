<%--
  Created by IntelliJ IDEA.
  User: rushi
  Date: 10-01-2024
  Time: 09:04 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student</title>

    <%
        String msg = (String) session.getAttribute("msg");
    %>
    <p><%=msg%>
    </p>

    <%
        session.removeAttribute("msg");
    %>


</head>
<body>

</body>
</html>
