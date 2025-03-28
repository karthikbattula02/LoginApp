<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Welcome Page</title>
</head>
<body>
    <%
        HttpSession sessionObj = request.getSession(false);
        String username = (sessionObj != null) ? (String) sessionObj.getAttribute("username") : null;
        if (username == null) {
            response.sendRedirect("login.jsp");
        } else {
    %>
        <h2>Hi, welcome <%= username %>!</h2>
    <%
        }
    %>
    <br>
    <a href="logout.jsp">Logout</a>
</body>
</html>
