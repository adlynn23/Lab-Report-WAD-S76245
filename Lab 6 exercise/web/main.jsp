<%-- 
    Document   : main
    Created on : 12 May 2026, 4:11:27 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Main Page</title>
    </head>
    <body>
        <h1>Welcome to the System</h1>
        <p><strong>Username:</strong> <%= session.getAttribute("user")%></p>
        <p><strong>First Name:</strong> <%= session.getAttribute("fname")%></p>
        <p><strong>Last Name:</strong> <%= session.getAttribute("lname")%></p>
        <br>
        <a href="login.jsp">Logout</a>
    </body>
</html>