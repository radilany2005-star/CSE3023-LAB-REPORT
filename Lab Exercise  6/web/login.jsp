<%-- 
    Document   : login
    Created on : 12 May 2026, 3:34:11 pm
    Author     : radil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
    </head>
    <body>
        <h2>Login</h2>
        <% 
            String msg = request.getParameter("msg");
            if(msg != null) out.print("<p style='color:red'>" + msg + "</p>");
        %>
        <form action="doLogin.jsp" method="post">
            Username: <input type="text" name="username" required><br>
            Password: <input type="password" name="password" required><br>
            <input type="submit" value="Login">
        </form>
    </body>
</html>
