<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Price List App</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div><a href="#" class="navbar-brand">Car Shop Admin Portal</a></div>
            <ul class="navbar-nav">
                <li><a href="${pageContext.request.contextPath}/list" class="nav-link">Inventory List</a></li>
            </ul>
        </nav>
    </header>
    <br>
    <div class="container col-md-5">
        <div class="card">
            <div class="card-body">
                <form action="${car != null ? 'update' : 'insert'}" method="post">
                    <h2>${car != null ? 'Edit Car Entry' : 'Add New Car Price'}</h2>
                    
                    <%-- FIXED: Removed class="test" attribute --%>
                    <c:if test="${car != null}">
                        <input type="hidden" name="id" value="<c:out value='${car.id}' />" />
                    </c:if>

                    <fieldset class="form-group">
                        <label>Brand Name</label>
                        <input type="text" value="<c:out value='${car.brand}' />" class="form-control" name="brand" required="required">
                    </fieldset>
                    
                    <fieldset class="form-group">
                        <label>Model Version</label>
                        <input type="text" value="<c:out value='${car.model}' />" class="form-control" name="model" required="required">
                    </fieldset>
                    
                    <fieldset class="form-group">
                        <label>Cylinder count</label>
                        <input type="number" value="<c:out value='${car.cylinder}' />" class="form-control" name="cylinder" required="required">
                    </fieldset>
                    
                    <fieldset class="form-group">
                        <label>Price ($)</label>
                        <input type="number" step="0.01" value="<c:out value='${car.price}' />" class="form-control" name="price" required="required">
                    </fieldset>
                    
                    <button type="submit" class="btn btn-success">Save Car</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>