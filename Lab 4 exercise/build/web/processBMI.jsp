<%-- 
    Document   : processBMI
    Created on : 21 Apr 2026, 3:33:36 pm
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
  <h3>BMI Result</h3>
<%
    // Get parameters
    double weight = Double.parseDouble(request.getParameter("weight"));
    double height = Double.parseDouble(request.getParameter("height"));
    
  
   
    // Calculate BMI
    double bmi = weight / (height * height);
    
    // Determine category
    String category;
    if (bmi < 18.5) {
        category = "Underweight";
    } else if (bmi < 24.9) {
        category = "Normal";
    } else if (bmi < 29.9) {
        category = "Overweight";
    } else {
        category = "Obese";
    }
    
String bmiFormatted = String.format("%.2f", bmi);
%>
%>
<jsp:forward page="resultBMI.jsp">
    <jsp:param name="bmiValue" value="<%= bmiFormatted %>" />
    <jsp:param name="bmiCategory" value="<%= category %>" />
</jsp:forward>
</div>
<%@ include file="footer.jsp" %>

</body>
</html>
