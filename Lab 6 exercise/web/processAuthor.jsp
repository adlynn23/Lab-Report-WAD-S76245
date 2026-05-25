<%-- 
    Document   : processAuthor
    Created on : 12 May 2026, 3:21:51 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<jsp:useBean id="myAuthor" class="lab6.com.Author" scope="request"/>
<html>
    <%
        int result;

        Class.forName("com.mysql.jdbc.Driver");
        String myURL = "jdbc:mysql://localhost:3307/csf3107";
        Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");

        String sInsertQry = "INSERT INTO Author (authno, name, address, city, state, zip) VALUES (?, ?, ?, ?, ?, ?)";

        PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);

        myPS.setString(1, myAuthor.getAuthno());
        myPS.setString(2, myAuthor.getName());
        myPS.setString(3, myAuthor.getAddress());
        myPS.setString(4, myAuthor.getCity());
        myPS.setString(5, myAuthor.getState());
        myPS.setString(6, myAuthor.getZip());

        result = myPS.executeUpdate();
        if (result > 0) {
            out.println("\tRecord successfully added into Author table ...! ");
            out.print("<p>" + "Record with author no " + myAuthor.getAuthno()
                    + " successfully created ..! " + "</p>");
            out.print("<p>" + "Details of record are; " + "</p>");
            out.print("<p>Name : " + myAuthor.getName() + "</p>");
            out.print("Address : " + myAuthor.getAddress() + "</p>");
            out.print("<p>City : " + myAuthor.getCity() + "</p>");
            out.print("<p>State : " + myAuthor.getState() + "</p>");
            out.print("<p>2ip : " + myAuthor.getZip() + "</p>");

//Step 5: Close database connnection ...!
            System.out.println("Step 5: Close database connection ...! ");
            myConnection.close();
            System.out.println(" ");
            System.out.println("Database connection is closed ...! ");
    %>

</html>
