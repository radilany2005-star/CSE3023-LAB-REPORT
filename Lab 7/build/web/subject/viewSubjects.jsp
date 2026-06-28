<%@page import="com.lab.bean.StudentBean"%>
<%@page import="java.util.List"%>
<%@page import="com.lab.bean.SubjectBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subject List</title>
        <style>
            body { font-family: Arial, sans-serif; margin: 30px; background-color: #f4f4f9; }
            table { width: 80%; border-collapse: collapse; margin-top: 20px; background: white; }
            th, td { padding: 10px; border: 1px solid #ddd; text-align: left; }
            th { background-color: #007bff; color: white; }
            tr:nth-child(even) { background-color: #f9f9f9; }
            a { text-decoration: none; color: #007bff; }
            a:hover { text-underline-position: under; text-decoration: underline; }
            .btn-register { display: inline-block; padding: 8px 15px; background: #28a745; color: white; border-radius: 4px; margin-bottom: 10px;}
            .btn-register:hover { background: #218838; text-decoration: none; }
        </style>
    </head>
    <body>
        <h2>Registered Subjects</h2>
        
        <% 
            String displayMatric = "Unknown";
            if (session.getAttribute("loggedUser") != null) {
                StudentBean loggedUser = (StudentBean) session.getAttribute("loggedUser");
                displayMatric = loggedUser.getMatricNo();
            }
        %>
        <p>Welcome, Student [Matric No: <strong><%= displayMatric %></strong>]</p>
        
        <p><a href="SubjectServlet?action=addForm" class="btn-register">Register New Subject</a></p>

        <table>
            <tr>
                <th>ID</th>
                <th>Subject Code</th>
                <th>Subject Name</th>
                <th>Actions</th>
            </tr>
            <% 
                List<SubjectBean> listSubjects = (List<SubjectBean>) request.getAttribute("listSubjects");
                if (listSubjects != null && !listSubjects.isEmpty()) {
                    for (SubjectBean subject : listSubjects) {
             %>
            <tr>
                <td><%= subject.getId() %></td>
                <td><%= subject.getSubjectCode() %></td>
                <td><%= subject.getSubjectName() %></td>
                <td>
                    <a href="SubjectServlet?action=editForm&id=<%= subject.getId() %>" style="color: #ffc107; font-weight: bold;">Edit</a>
                    | 
                    <a href="SubjectServlet?action=delete&id=<%= subject.getId() %>" 
                       style="color: #dc3545; font-weight: bold;"
                       onclick="return confirm('Are you sure you want to delete this subject?')">Delete</a>
                </td>
            </tr>
            <% 
                    }
                } else {
            %>
            <tr>
                <td colspan="4" style="text-align: center; color: #777;">No subjects registered yet.</td>
            </tr>
            <% 
                }
            %>
        </table>
    </body>
</html>