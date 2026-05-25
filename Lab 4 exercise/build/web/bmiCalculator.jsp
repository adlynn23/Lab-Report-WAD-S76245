<%-- 
    Document   : bmiCalculator
    Created on : 21 Apr 2026, 3:28:10 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>BMI Calculator </title>
        <link rel="stylesheet" href="style.css">

    </head>
    <body>
        <%@ include file="header.jsp" %>
        <form action="processBMI.jsp" method="post">
            <h2>Calculate your BMI now !</h2>
            <!-- Customer Code -->
            <label for="weight">Weight:</label>
            <input type="number" id="weight" name="weight"  placeholder="kg"required>
            <br><br>

            <label for="height"> Height:</label>
            <input type="text" id="height" name="height"  placeholder="m" required>
            <br><br>
            <div class="button-group">
                <button type="submit">Submit</button>
                <button type="reset">Cancel</button>
            </div>
        </form>
        <%@ include file="footer.jsp" %>

    </body>

</html>

