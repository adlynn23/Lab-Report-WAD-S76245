<%-- 
    Document   : resultBMI
    Created on : 21 Apr 2026, 3:41:42 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="header.jsp" %>
        <meta charset="UTF-8">
        <title>BMI Result</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="result-box">
            <h2>Your BMI Result</h2>
            <p><strong>BMI:</strong> <%= request.getParameter("bmiValue")%></p>
            <p><strong>Category:</strong> <%= request.getParameter("bmiCategory")%></p>
            <button class="btn-back" onclick="window.history.back()">Back</button>
        </div>
    </body>
    <%@ include file="footer.jsp" %>

</html>

