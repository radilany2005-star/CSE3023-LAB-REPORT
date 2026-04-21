<%-- 
    Document   : forward
    Created on : 21 Apr 2026, 3:28:53 pm
    Author     : radil
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Using JSP Standard Action (Forward)</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="container">
            <h1>Using jsp:forward to display user info</h1>
            <div class="card">
                
            <h1>Forward Info</h1>
        <jsp:forward page="forwardInfo.jsp">
            <jsp:param name="uname" value="Muhammad Radilan bin Yaakub" />
            <jsp:param name="email" value="s75736@umt.edu.my" />
            <jsp:param name="nationality" value="Malaysia" />
            <jsp:param name="background" value="Student" />
        </jsp:forward>
        </div>
            </div>
    </body>
</html>
