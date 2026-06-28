<%-- 
    Document   : login
    Created on : 12 May 2026, 3:25:15?pm
    Author     : radil
--%>

<%
    String msg = request.getParameter("msg");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>

<h2>User Login</h2>

<%
    if(msg != null){
%>
        <p style="color:red;"><%= msg %></p>
<%
    }
%>

<form action="doLogin.jsp" method="post">

    Username:
    <input type="text" name="username"><br><br>

    Password:
    <input type="password" name="password"><br><br>

    <input type="submit" value="Login">

</form>

</body>
</html>
