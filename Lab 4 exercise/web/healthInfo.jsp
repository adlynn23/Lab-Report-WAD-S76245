<%-- 
    Document   : healthInfo
    Created on : 21 Apr 2026, 3:54:23?pm
    Author     : DELL
--%>

<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="header.jsp" %>

        <meta charset="UTF-8">
        <title>Health Info</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card">
            <h2>BMI Categories</h2>
            <%
                ArrayList<String> categories = new ArrayList<String>();
                categories.add("Underweight (< 18.5)");
                categories.add("Normal (18.5 - 25)");
                categories.add("Overweight (> 25)");
                categories.add("Obese ( > 30)");
            %>
            <table border="1" cellpadding="8" cellspacing="0">
                <tr><th>Category</th></tr>
                        <% for (String c : categories) {%>
                <tr><td><%= c%></td></tr>
                <% }%>
            </table>
        </div>
    </body>
    <%@ include file="footer.jsp" %>

</html>
