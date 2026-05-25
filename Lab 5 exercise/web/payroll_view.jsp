<%-- 
    Document   : payroll_view
    Created on : 29 Apr 2026, 3:01:59 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Payroll System</title>
</head>
<body>
    <h2>Employee Payroll List</h2>
    <table border="1" cellpadding="10">
        <tr style="background-color: #f2f2f2;">
            <th>Emp ID</th>
            <th>Name</th>
            <th>Department</th>
            <th>Basic Salary (RM)</th>
            <th>Status</th>
        </tr>
        <c:forEach items="${employeeList}" var="emp">
            <tr>
                <td>${emp.empId}</td>
                <td>${emp.name}</td>
                <td>${emp.department}</td>
                <td>${emp.basicSalary}</td>
                <td>
                    <%-- Logic Challenge: Salary Check --%>
                    <c:choose>
                        <c:when test="${emp.basicSalary >= 3000}">
                            <strong>Senior</strong>
                        </c:when>
                        <c:otherwise>
                            Junior
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>