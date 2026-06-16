<%-- 
    Document   : book_session
    Created on : 16 Jun 2026, 2:57:24 PM
    Author     : MP2-4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DriveSmart Academy</title>
    </head>
    <body>
        <%@ include file="header.html" %>

        <h2>Book Driving Session</h2>

        <form method="POST" action="BookSessionServlet">Student Name:<input type="text" name="student_name" required>

            <br><br>
            <form method="POST" action="BookSessionServlet">Branch Location:<input type="text" name="branch_location" required>
           

            <br><br>Lesson Type:
            <select name="lesson_type">

                <option>Manual Car</option>
                <option>Automatic Car</option>
                <option>Motorcycle</option>

            </select>

            <br><br>

            <input type="submit"
                   value="Book Session">

        </form>

    </body>
    <%@ include file="footer.jsp" %>
</html>
