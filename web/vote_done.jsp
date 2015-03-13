<%-- 
    Document   : vote_done
    Created on : Jul 18, 2014, 2:13:40 AM
    Author     : Parth Mewara
--%>

<%@page import="java.sql.ResultSet"%>
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
    <body>
     
            <center><body background="backimage5.jpg" style="background-size: cover">
   
<%
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ov","root","root123");
    Statement st=con.createStatement();
   
    
    %>

    <h1>You voted for:-</h1><br>
    
    <table border="1" style="alignment-adjust: central; text-align: center">
        <th scope="row">CONTENDER NUMBER</th>
        <th scope="row">CONTENDER NAME</th>
        <th scope="row">PARTY NAME</th>
        <th scope="row">PARTY SYMBOL</th>
        

       
        <%
           String voted=(String)request.getParameter("vote");
          ResultSet rs= st.executeQuery("select * from contender_list where contender_number='"+voted+"'");
          
        %>
        
        <%
          String voterid=request.getParameter("voterid");
          while(rs.next())
          {
          %>
          <tr>
              
              <td><%=rs.getString(1)%></td>
              <td><%=rs.getString(2)%></td>
              <td><%=rs.getString(3)%></td>
              <td><%=rs.getString(4)%></td>
                    
          
          <%
          }//while(rs.next())
          %>
          
          
          <%
          ResultSet rs2=st.executeQuery("select votecount from vote_count where contender_number='"+voted+"'");
          %>
            
              <%
          rs2.next();
          String count=rs2.getString(1);
          int count1=Integer.parseInt(count);
          count1=count1+1;
          String count2=Integer.toString(count1);
          
          
          st.executeUpdate("update vote_count set votecount='"+count2+"' where contender_number='"+voted+"'");
          st.executeUpdate("update user_otp set voted='done' where voter_id='"+voterid+"'");
          %>
          
              </table>
          
          <h1>YOUR VOTE HAS BEEN SUBMITTED</h1>
          <h1>Thank you for your Vote</h1>
          <a href="index.jsp">Go to the Home Page</a>
    </body>
    
</html>

<%
    }//try
    catch(Exception e)
    {out.println(e);}


%>