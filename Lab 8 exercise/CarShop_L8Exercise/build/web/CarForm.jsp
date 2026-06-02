<%-- 
    Document   : CarForm
    Created on : 2 Jun 2026, 3:40:29 pm
    Author     : DELL
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Shop Management</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <a href="" class="navbar-brand">Car Shop Admin Console</a>
            <ul class="navbar-nav">
                <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Inventory</a></li>
            </ul>
        </nav>
    </header>
    <br>
    <div class="container col-md-5">
        <div class="card">
            <div class="card-body">
                <form action="<c:choose><c:when test='${car != null}'>update</c:when><c:otherwise>insert</c:otherwise></c:choose>" method="post">
                <h2>
                    <c:choose>
                        <c:when test="${car != null}">Edit Car Entry</c:when>
                        <c:otherwise>Add New Car Entry</c:otherwise>
                    </c:choose>
                </h2>
                
                <c:if test="${car != null}">
                    <input type="hidden" name="id" value="<c:out value='${car.carId}' />" />
                </c:if>

                <fieldset class="form-group">
                    <label>Brand</label>
                    <input type="text" value="<c:out value='${car.brand}'/>" class="form-control" name="brand" required="required">
                </fieldset>

                <fieldset class="form-group">
                    <label>Model</label>
                    <input type="text" value="<c:out value='${car.model}'/>" class="form-control" name="model" required="required">
                </fieldset>

                <fieldset class="form-group">
                    <label>Cylinders</label>
                    <input type="number" value="<c:out value='${car.cyclinder}'/>" class="form-control" name="cyclinder" required="required">
                </fieldset>

                <fieldset class="form-group">
                    <label>Price (RM)</label>
                    <input type="text" value="<c:out value='${car.price}'/>" class="form-control" name="price" required="required">
                </fieldset>

                <button type="submit" class="btn btn-success">Save Car Info</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>