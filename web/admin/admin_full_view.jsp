<%-- 
    Document   : admin_full_view
    Created on : Jul 17, 2014, 5:46:53 PM
    Author     : Parth Mewara
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>ONLINE VOTING PORTAL</title>
    </head>
    <body background="backimage9.jpg"><center>
            <h1  style="text-align:center ; color:blueviolet ; text-decoration:underline" >THE FULL USER DETAILS ARE:-</h1>
 
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
            
            <th scope="row">Sex</th>
            <th scope="row">Father/Husband</th>
            <th scope="row">Name</th> 
            <th scope="row">Mobile</th> 
            <th scope="row">Address</th>
            <th scope="row">State</th>
            <th scope="row">Tehsil</th>
            <th scope="row">City</th> 
            <th scope="row">Pincode</th> 
            <th scope="row">Pancard</th>
            <th scope="row">Passport</th>
            <th scope="row">Aadhaar</th>
            <th scope="row">Actions</th>
    <%
   ResultSet rs= st.executeQuery("select * from user_all");//to select all entries
   
  while(rs.next())
   {
       %>
            <tr>
                <td><%=rs.getString(1)%></td> 
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>  
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td> 
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>  
                <td><%=rs.getString(8)%></td>
                <td><%=rs.getString(9)%></td> 
                <td><%=rs.getString(10)%></td>
                <td><%=rs.getString(11)%></td>  
                <td><%=rs.getString(12)%></td>
                <td><%=rs.getString(13)%></td>
                <td><%=rs.getString(14)%></td> 
                <td><%=rs.getString(15)%></td>
                <td><%=rs.getString(16)%></td>  
                <td><%=rs.getString(17)%></td>
                <td><a href="admin_update_entry.jsp?<%=rs.getString(1)%>">UPDATE</td>
       <%     
   }
        
   %>
   
  </table>
   <br>
   
   <a href="admin_view_detail.jsp">GO TO USER DETAILS VIEW</a>
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
