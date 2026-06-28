<%-- 
    Document   : processUser
    Created on : 12 May 2026, 3:34:02 pm
    Author     : radil
--%>

<%@ page import="java.sql.*" %>
<%
    String user = request.getParameter("username");
    String pass = request.getParameter("password");
    String fname = request.getParameter("firstname");
    String lname = request.getParameter("lastname");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver"); // Or your specific driver
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cf3107", "root", "");
        
        PreparedStatement ps = con.prepareStatement("INSERT INTO userprofile VALUES(?,?,?,?)");
        ps.setString(1, user);
        ps.setString(2, pass);
        ps.setString(3, fname);
        ps.setString(4, lname);
        
        ps.executeUpdate();
        out.print("Registration successful! <a href='login.jsp'>Login here</a>");
    } catch(Exception e) {
        out.print("Error: " + e.getMessage());
    }
%>
