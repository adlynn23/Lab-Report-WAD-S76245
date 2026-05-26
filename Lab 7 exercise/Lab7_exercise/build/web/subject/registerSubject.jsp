<%-- 
    Document   : registerSubject
    Created on : 25 May 2026, 10:14:31 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register Subject</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light p-5">
    <div class="container card shadow p-4" style="max-width: 500px;">
        <h2>Register New Subject</h2>
        <form action="../SubjectServlet" method="POST">
            <input type="hidden" name="action" value="add">
            <div class="mb-3">
                <label class="form-label">Subject Code</label>
                <input type="text" name="subjectCode" class="form-control" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Subject Name</label>
                <input type="text" name="subjectName" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary">Register Subject</button>
            <a href="../SubjectServlet?action=view" class="btn btn-secondary">Back to List</a>
        </form>
    </div>
</body>
</html>