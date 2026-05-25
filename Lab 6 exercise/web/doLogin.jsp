<%-- 
    Document   : doLogin
    Created on : 12 May 2026, 4:10:55 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%
    String user = request.getParameter("username");
    String pass = request.getParameter("password");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/csf3107", "root", "");

        String sql = "SELECT * FROM userprofile WHERE username=? AND password=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, user);
        ps.setString(2, pass);

        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            // Store data in session to display on main.jsp
            session.setAttribute("user", rs.getString("username"));
            session.setAttribute("fname", rs.getString("firstname"));
            session.setAttribute("lname", rs.getString("lastname"));
            response.sendRedirect("main.jsp");
        } else {
            response.sendRedirect("login.jsp?msg=Invalid username or password..!");
        }
        con.close();
    } catch (Exception e) {
        out.print(e.getMessage());
    }
%>
