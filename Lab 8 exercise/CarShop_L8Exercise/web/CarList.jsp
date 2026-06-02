<%-- 
    Document   : CarList
    Created on : 2 Jun 2026, 3:40:14 pm
    Author     : DELL
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Shop Inventory</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <a href="" class="navbar-brand">Car Shop Inventory System</a>
        </nav>
    </header>
    <br>
    <div class="row">
        <div class="container">
            <h3 class="text-center">Showroom Catalog</h3>
            <hr>
            <div class="container text-left">
                <a href="<%=request.getContextPath()%>/new" class="btn btn-primary">Add New Vehicle</a>
            </div>
            <br>
            <table class="table table-bordered table-striped">
                <thead class="thead-dark">
                    <tr>
                        <th>ID</th>
                        <th>Brand</th>
                        <th>Model</th>
                        <th>Cylinders</th>
                        <th>Price</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="car" items="${listCars}">
                        <tr>
                            <td><c:out value="${car.carId}" /></td>
                            <td><c:out value="${car.brand}" /></td>
                            <td><c:out value="${car.model}" /></td>
                            <td><c:out value="${car.cyclinder}" /> v</td>
                            <td>RM <c:out value="${car.price}" /></td>
                            <td>
                                <a class="btn btn-sm btn-warning" href="edit?id=<c:out value='${car.carId}' />">Edit</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <a class="btn btn-sm btn-danger" href="delete?id=<c:out value='${car.carId}' />" onclick="return confirm('Delete this record?');">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>