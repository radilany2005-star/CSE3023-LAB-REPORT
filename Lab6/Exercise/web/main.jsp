<%-- 
    Document   : main
    Created on : 12 May 2026, 3:26:27?pm
    Author     : radil
--%>

<%@ page import="com.lab.bean.User" %>

<%
    User user = (User) session.getAttribute("user");

    if(user == null){
        response.sendRedirect("login.jsp");
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Main Page</title>
</head>
<body>

<h2>Welcome</h2>

Username: <%= user.getUsername() %> <br><br>

First Name: <%= user.getFirstname() %> <br><br>

Last Name: <%= user.getLastname() %>

</body>
</html>
