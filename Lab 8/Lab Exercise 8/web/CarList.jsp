<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Price List Inventory</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div><a href="#" class="navbar-brand">Car Shop Inventory</a></div>
        </nav>
    </header>
    <br>
    <div class="container">
        <h3 class="text-center">Car Price List Registry</h3>
        <hr>
        <div class="container text-left">
            <a href="${pageContext.request.contextPath}/new" class="btn btn-success">Add New Car</a>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Brand</th>
                    <th>Model</th>
                    <th>Cylinder</th>
                    <th>Price</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="car" items="${listCar}">
                    <tr>
                        <td><c:out value="${car.id}" /></td>
                        <td><c:out value="${car.brand}" /></td>
                        <td><c:out value="${car.model}" /></td>
                        <td><c:out value="${car.cylinder}" /></td>
                        <td>$<c:out value="${car.price}" /></td>
                        <td>
                            <a class="btn btn-primary btn-sm" href="edit?id=${car.id}">Edit</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <a class="btn btn-danger btn-sm" href="delete?id=${car.id}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>