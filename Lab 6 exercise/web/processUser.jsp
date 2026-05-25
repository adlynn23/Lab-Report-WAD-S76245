<%-- 
    Document   : processUser
    Created on : 12 May 2026, 4:10:04 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html><%@page import="java.sql.*"%>
<%
    String user = request.getParameter("username");
    String pass = request.getParameter("password");
    String fname = request.getParameter("firstname");
    String lname = request.getParameter("lastname");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/csf3107", "root", "");
        
        String sql = "INSERT INTO userprofile VALUES (?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, user);
        ps.setString(2, pass);
        ps.setString(3, fname);
        ps.setString(4, lname);
        
        int i = ps.executeUpdate();
        if(i > 0) {
            out.print("Registration Successful! <a href='login.jsp'>Login here</a>");
        }
        con.close();
    } catch(Exception e) {
        out.print("Error: " + e.getMessage());
    }
%>