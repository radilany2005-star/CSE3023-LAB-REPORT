<%-- 
    Document   : subjectInfo
    Created on : 21 Apr 2026, 3:16:48 pm
    Author     : radil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Subject Information</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <h1>Subject Information</h1>
        <%
            String sCode = "CSE3023";
            String sSubject = "Web-based Application Development";
            String sCredit = "3(2+1)";
        %>
        <div class="container">
            <h1>Using jsp:include and jsp:param to display information on JSP Page</h1>
            <div class="card">
                <h2 class="form-title">Calling SubjectInfo.Jsp Page</h2>
                <p>Code: <%= request.getParameter("code")%></p>
                <p>Subject: <%= request.getParameter("subject")%></p>
                <p>Credit: <%= request.getParameter("credit")%></p>
            </div><!-- comment -->
        </div>
    </body>
</html>
