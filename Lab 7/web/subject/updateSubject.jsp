<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.lab.bean.SubjectBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Subject</title>
</head>
<body>
    <h2>Edit Subject Details</h2>
    <%
        SubjectBean subject = (SubjectBean) request.getAttribute("subject");
        if (subject != null) {
    %>
    <form action="SubjectServlet?action=update" method="post">
        <input type="hidden" name="id" value="<%= subject.getId() %>" />
        
        <table cellpadding="5">
            <tr>
                <td>Subject Code:</td>
                <td><input type="text" name="subjectCode" value="<%= subject.getSubjectCode() %>" required /></td>
            </tr>
            <tr>
                <td>Subject Name:</td>
                <td><input type="text" name="subjectName" value="<%= subject.getSubjectName() %>" required /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Update Details" />
                    <a href="SubjectServlet?action=view">Cancel</a>
                </td>
            </tr>
        </table>
    </form>
    <% 
        } else { 
    %>
        <p>Error: Subject data not found.</p>
        <a href="SubjectServlet?action=view">Back to List</a>
    <% 
        } 
    %>
</body>
</html>