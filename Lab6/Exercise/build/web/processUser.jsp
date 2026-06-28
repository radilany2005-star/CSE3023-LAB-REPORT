<%-- 
    Document   : processUser
    Created on : 12 May 2026, 3:23:45?pm
    Author     : radil
--%>

<%@ page import="com.lab.bean.User" %>
<%@ page import="com.lab.bean.UserDAO" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String firstname = request.getParameter("firstname");
    String lastname = request.getParameter("lastname");

    User user = new User();

    user.setUsername(username);
    user.setPassword(password);
    user.setFirstname(firstname);
    user.setLastname(lastname);

    int status = UserDAO.insertUser(user);

    if(status > 0){
        out.println("User registered successfully!");
        out.println("<br><a href='login.jsp'>Login Here</a>");
    }
    else{
        out.println("Registration failed!");
    }
%>