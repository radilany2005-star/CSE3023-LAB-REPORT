<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register Subject</title>
</head>
<body>
    <h2>Register New Subject</h2>
    <form action="SubjectServlet?action=insert" method="post">
        <table cellpadding="5">
            <tr>
                <td>Subject Code:</td>
                <td><input type="text" name="subjectCode" required /></td>
            </tr>
            <tr>
                <td>Subject Name:</td>
                <td><input type="text" name="subjectName" required /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Register" />
                    <a href="SubjectServlet?action=view">Cancel</a>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>