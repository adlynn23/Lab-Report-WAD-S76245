<%-- 
    Document   : viewSubject
    Created on : 25 May 2026, 10:15:02 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.lab.bean.SubjectBean"%>
<!DOCTYPE html>
<html>
<head>
    <title>My Registered Subjects</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light p-5">
    <div class="container card shadow p-4">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h2>Your Registered Subjects</h2>
            <div>
                <a href="subject/registerSubject.jsp" class="btn btn-success">Add New Subject</a>
                <a href="dashboard.jsp" class="btn btn-dark">Main Dashboard</a>
            </div>
        </div>

        <table class="table table-striped table-bordered">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Subject Code</th>
                    <th>Subject Name</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<SubjectBean> list = (List<SubjectBean>) request.getAttribute("subjectList");
                    if(list == null || list.isEmpty()) {
                %>
                    <tr>
                        <td colspan="4" class="text-center text-muted">No subjects registered yet.</td>
                    </tr>
                <%
                    } else {
                        for(SubjectBean sb : list) {
                %>
                    <tr>
                        <td><%= sb.getId() %></td>
                        <td><%= sb.getSubjectCode() %></td>
                        <td><%= sb.getSubjectName() %></td>
                        <td>
                            <a href="SubjectServlet?action=edit&id=<%= sb.getId() %>" class="btn btn-warning btn-sm">Edit</a>
                            <a href="SubjectServlet?action=delete&id=<%= sb.getId() %>" 
                               class="btn btn-danger btn-sm" 
                               onclick="return confirm('Are you sure you want to delete this subject?');">Delete</a>
                        </td>
                    </tr>
                <%
                        }
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>