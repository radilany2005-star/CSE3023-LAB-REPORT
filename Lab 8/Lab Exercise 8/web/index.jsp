<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Car Shop Management Application</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body class="container mt-4">
        <h1>Application MVC system for Car Shop Management</h1>
        <br>

        <ul>
            <li><a href="${pageContext.request.contextPath}/list"> All Car List </a></li>
            <li><a href="${pageContext.request.contextPath}/new"> Add a New Car </a></li>
        </ul>
    </body>
</html>