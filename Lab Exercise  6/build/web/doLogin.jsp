<%-- 
    Document   : doLogin
    Created on : 12 May 2026, 3:34:20 pm
    Author     : radil
--%>

<%@ page import="java.sql.*" %>
<%
    String user = request.getParameter("username");
    String pass = request.getParameter("password");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cf3107", "root", "");
        
        PreparedStatement ps = con.prepareStatement("SELECT * FROM userprofile WHERE username collate utf8mb4_bin =? AND password collate utf8mb4_bin =?");
        ps.setString(1, user);
        ps.setString(2, pass);
        ResultSet rs = ps.executeQuery();

        if(rs.next()) {
            // Success: Store info in session and redirect
            session.setAttribute("user", rs.getString("username"));
            session.setAttribute("fname", rs.getString("firstname"));
            session.setAttribute("lname", rs.getString("lastname"));
            response.sendRedirect("main.jsp");
        } else {
            // Failure: Redirect back with message
            response.sendRedirect("login.jsp?msg=Invalid username or password..!");
        }
    } catch(Exception e) {
        out.print(e.getMessage());
    }
%>
