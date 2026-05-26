<%-- 
    Document   : updateSubject
    Created on : 25 May 2026, 10:14:48 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.lab.bean.SubjectBean"%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Subject</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light p-5">
    <%
        SubjectBean sb = (SubjectBean) request.getAttribute("subject");
    %>
    <div class="container card shadow p-4" style="max-width: 500px;">
        <h2>Edit Subject Details</h2>
        <form action="SubjectServlet" method="POST">
            <input type="hidden" name="action" value="update">
            <input type="hidden" name="id" value="<%= sb.getId() %>">
            
            <div class="mb-3">
                <label class="form-label">Subject Code</label>
                <input type="text" name="subjectCode" class="form-control" value="<%= sb.getSubjectCode() %>" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Subject Name</label>
                <input type="text" name="subjectName" class="form-control" value="<%= sb.getSubjectName() %>" required>
            </div>
            <button type="submit" class="btn btn-primary">Save Changes</button>
            <a href="SubjectServlet?action=view" class="btn btn-secondary">Cancel</a>
        </form>
    </div>
</body>
</html>
