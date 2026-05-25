<%-- 
    Document   : insertAuthor
    Created on : 12 May 2026, 3:16:20 pm
    Author     : DELL
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lab 6 - Task 2</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        fieldset {
            width: 500px;
            border: 1px solid #ccc;
            padding: 20px;
        }
        legend {
            font-weight: normal;
        }
        .form-group {
            margin-bottom: 10px;
            display: flex;
            align-items: center;
        }
        label {
            width: 120px;
            display: inline-block;
        }
        input[type="text"] {
            width: 250px;
            padding: 3px;
            border: 1px solid #aaa;
        }
        .buttons {
            margin-top: 15px;
            margin-left: 5px;
        }
        footer {
            margin-top: 20px;
            font-size: 0.9em;
        }
    </style>
</head>
<body>

    <h2>Lab 6 - Task 2 - Perform creating and retrieving records via JSP page</h2>

    <form action="insertAuthor.jsp" method="post">
        <fieldset>
            <legend>Author Registration</legend>
            
            <div class="form-group">
                <label>Author No</label>
                <input type="text" name="authorNo" placeholder="E.g.: UKXXXXX">
            </div>

            <div class="form-group">
                <label>Name</label>
                <input type="text" name="name" placeholder="Enter your name">
            </div>

            <div class="form-group">
                <label>Address</label>
                <input type="text" name="address" placeholder="Enter your address">
            </div>

            <div class="form-group">
                <label>City</label>
                <input type="text" name="city" placeholder="Enter your city">
            </div>

            <div class="form-group">
                <label>State</label>
                <input type="text" name="state" placeholder="Enter your state">
            </div>

            <div class="form-group">
                <label>Zip</label>
                <input type="text" name="zip" placeholder="Enter your zip">
            </div>

            <div class="buttons">
                <input type="submit" value="Submit">
                <input type="reset" value="Cancel">
            </div>
        </fieldset>
    </form>

    <footer>
        &copy;2018-Dr.Faizah Binti Aplop
    </footer>

</body>
</html>