<%-- 
    Document   : admin_view_detail
    Created on : Jul 7, 2014, 9:53:47 PM
    Author     : Parth Mewara
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ONLINE VOTING PORTAL</title>
    </head>
    <body background="backimage9.jpg"><center>
            <h1  style="text-align:center ; color:blueviolet ; text-decoration:underline" >THE USER DETAILS ARE:-</h1>

    </center>    </body>
    
    <%
        try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ov","root","root123");
    Statement st=con.createStatement();
        
        %>
        <center>
        <table border="1" style="alignment-adjust: central; text-align: center">
            
            <th scope="row">Voter ID</th>
            <th scope="row">First Name</th>
            <th scope="row">Middle Name</th> 
            <th scope="row">Last Name</th> 
            <th scope="row">Date of Birth</th>
            <th scope="row">Actions</th>
    <%
   ResultSet rs= st.executeQuery("select * from user_login");//to select all entries
   
  while(rs.next())
   {
       %>
            <tr>
                <td><%=rs.getString(1)%></td> 
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>  
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><a href="admin_update_entry.jsp?<%=rs.getString(1)%>">UPDATE</td>
       <%     
   }
        
   %>
   
  </table>
   <br>
   
   <a href="admin_full_view.jsp">GO TO FULL DETAILS VIEW</a>
   <br>
   <br>
   
        <a href="admin_dataentry.jsp">GO TO DATA ENTRY PAGE</a>
   
        </center>
 <%
 }
        catch(Exception e)
        {out.println(e);}
        %>
    
    
</html>
