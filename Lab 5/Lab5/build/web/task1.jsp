<%-- 
    Document   : task1.jsp
    Created on : 29 Apr 2026, 2:28:07 pm
    Author     : radil
--%>
<%@page import="com.lab.bean.StudentBean" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Student Information (Using Scriptlet)</h2>
        <%
            StudentBean student = new StudentBean();
            student.setName("Ahmad Ali");
            student.setMatricNo("S123456");
        %>
        <p><strong>Name:</strong> <%= student.getName() %></p>
        <p><strong>Matric No:</strong> <%= student.getMatricNo() %></p>
    </body>
</html>
