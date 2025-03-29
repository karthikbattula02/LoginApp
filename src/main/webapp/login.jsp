<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
    <form action="login" method="post">
        Username: <input type="text" name="username" placeholder ="FirstName LastName" required><br>
        Password: <input type="password" name="password" required><br>
        <input type="submit" value="Login">
    </form>
    <%
        String error = request.getParameter("error");
        if (error != null) {
    %>
        <p style="color: red;">Invalid username or password. Try again.</p>
    <%
        }
    %>
</body>
</html>
