<%-- 
    Document   : user_validate_entry
    Created on : Jul 10, 2014, 11:02:01 AM
    Author     : Parth Mewara
--%>
<%--NOT USED

--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ONLINE VOTING PORTAL</title>
    </head>
    <body>
          </body>
</html>
<%
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ov","root","root123");
    Statement st=con.createStatement();
   
    
    %>
    
    <%
  String dob;
   String voterid,fname,mname,lname;
   
   dob=request.getParameter("dob");//5
    voterid=request.getParameter("voterid");//1
    fname=request.getParameter("fname");//2
    mname=request.getParameter("mname");//3
    lname=request.getParameter("lname");
    PreparedStatement ps1=con.prepareStatement("select * from user_all where voter_id='"+voterid+"' and first_name='"+fname+"' and middle_name='"+mname+"' and last_name='"+lname+"' and date_of_birth='"+dob+"'");
    %>
   
    <%=dob%>
    <%= fname%>
    <%=mname%>
    <%=lname%>
    
    <%
    ResultSet rs=ps1.executeQuery();
    
    while(rs.next())
    {
        out.println(rs.getString(1)); 
    }
    
    %>
    
    <%
    RequestDispatcher rd=request.getRequestDispatcher("user_register_form.jsp");
    rd.forward(request, response);
    
    %>
    
    
    
    
    
    <%
    }
    catch(Exception e)
    {
    out.println(e);
    }
    %>