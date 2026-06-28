<%-- 
    Document   : doLogin
    Created on : 12 May 2026, 3:25:41?pm
    Author     : radil
--%>

<%@ page import="com.lab.bean.UserDAO" %>
<%@ page import="com.lab.bean.User" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    User user = UserDAO.login(username, password);

    if(user != null){

        session.setAttribute("user", user);

        response.sendRedirect("main.jsp");

    } else {

        response.sendRedirect("login.jsp?msg=Invalid username or password!");
    }
%>
