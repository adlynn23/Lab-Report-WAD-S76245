<%-- 
    Document   : index
    Created on : 2 Jun 2026, 3:57:20 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Shop Management Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body class="bg-light">

    <div class="container text-center mt-5">
        <div class="card shadow-sm p-4 mx-auto" style="max-width: 600px;">
            <h1 class="text-primary mb-4">Car Shop Showroom System</h1>
            <p class="text-muted">Welcome to the MVC Admin Panel. Select an option below to manage the vehicle inventory database.</p>
            <hr>
            
            <div class="list-group">
                <a href="${pageContext.request.contextPath}/list" class="list-group-item list-group-item-action list-group-item-primary font-weight-bold">
                    🚗 View Showroom Inventory
                </a>
                <a href="${pageContext.request.contextPath}/new" class="list-group-item list-group-item-action list-group-item-success font-weight-bold">
                    ➕ Add a New Vehicle Entry
                </a>
            </div>
        </div>
    </div>

</body>
</html>