<%-- 
    Document   : test
    Created on : 18 Mar, 2015, 8:36:04 AM
    Author     : Parth
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            String connectionclass=request.getSession().getServletContext().getInitParameter("connectionclass");
            String connectionprotocol=request.getSession().getServletContext().getInitParameter("connectionprotocol");
            String username=request.getSession().getServletContext().getInitParameter("username");
            String password=request.getSession().getServletContext().getInitParameter("password");

            Class.forName(connectionclass);
            Connection con=DriverManager.getConnection(connectionprotocol,username,password);
            Statement st=con.createStatement();
           
            
            
            %>
            
        <h1>Hello World!</h1>
        
        <img src="user_img/1.png">
        
    </body>
</html>
