<%-- 
    Document   : main
    Created on : 12 May 2026, 3:44:40 pm
    Author     : radil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Content</title>
    </head>
    <body>
        <h2>Welcome to the System</h2>
        <p>Username: <%= session.getAttribute("user") %></p>
        <p>First Name: <%= session.getAttribute("fname") %></p>
        <p>Last Name: <%= session.getAttribute("lname") %></p>
        <br>
        <a href="login.jsp">Logout</a>
    </body>
</html>
