<%-- 
    Document   : payroll_view
    Created on : 29 Apr 2026, 3:20:05 pm
    Author     : radil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <title>Employee Payroll</title>
    <style>
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid black;
            padding: 10px;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<h2 style="text-align:center;">Employee Payroll List</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Department</th>
        <th>Salary (RM)</th>
        <th>Status</th>
    </tr>

    <c:forEach var="emp" items="${employeeList}">
        <tr>
            <td>${emp.empId}</td>
            <td>${emp.name}</td>
            <td>${emp.department}</td>
            <td>${emp.basicSalary}</td>
            <td>
                <c:choose>
                    <c:when test="${emp.basicSalary >= 3000}">
                        Senior
                    </c:when>
                    <c:otherwise>
                        Junior
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>
</table>
    </body>
</html>
