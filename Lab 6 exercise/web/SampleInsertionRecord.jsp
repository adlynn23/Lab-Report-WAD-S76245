<%-- 
    Document   : SampleInsertionRecord
    Created on : 12 May 2026, 2:15:08 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>

<body>
    <h1> Lab 6 - Task 1 - Sample Insertion records into MySQL
        through JSP’s page</h1>
</body>

<%
    int result;

    Class.forName("com.mysql.jdbc.Driver");
    out.println("Step 1: MySQL driver loaded...!");
%>
<br><!-- comment -->
<%
    String myURL = "jdbc:mysql://localhost:3307/csa3203";
    Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
    out.println("Step 2: Database is connected.....!");
%>
<br><!-- comment -->

<% out.println("Step 3: Prepared Statements created.....!");
    String sInsertQry = "INSERT INTO FirstTable VALUE(?)";
    PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);
%>
<br>
<%
//Assign each value to respective columns for Book's table ... (C-Create)
out.println("Step 4: Perform insertion of record ...! ");
String name = "Welcome to access MySQL database with JSP....!";
myPS.setString(1, name);

result = myPS.executeUpdate () ;

if (result > 0) {
%>
<br>

<%

out.println("Step 5: Close database connection ...! ");

out.println(" ");
out.println("Database connection is closed ...! ");

out.print("<p>" + "The record : (" + name + ") is successfully created ..! " + "</p>");

//Step 5: Close database connnection ...!
myConnection.close ();
%>