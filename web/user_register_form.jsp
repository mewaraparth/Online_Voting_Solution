<%-- 
    Document   : form
    Created on : Jul 9, 2014, 1:59:30 PM
    Author     : Parth Mewara
user hidden register form 
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
    

    <%
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ovs","root","root123");
    Statement st=con.createStatement();
    %>
    
    
    <%
    
    
    
    
    // String s3 = (String)request.getAttribute("s");
           
      //                  out.println(s3);
    %>
    
    <%


    String mobile,pin,dob=null;
   String voterid=null;
   String fname=null;
   String mname=null;
   String lname=null;
   String sex=null;
   String fhname=null;
   String address=null;
   String state=null;
   String tehsil,city,pancard,passport,aadhaar,hf;
   
   //Getting values from the previous page
   dob=request.getParameter("dob");//5
   voterid=request.getParameter("voterid");//1
   fname=request.getParameter("fname");//2
   mname=request.getParameter("mname");//3
   lname=request.getParameter("lname");
    
    
        PreparedStatement ps1=con.prepareStatement("select * from user_all where voterid='"+voterid+"' and firstname='"+fname+"' and middlename='"+mname+"' and lastname='"+lname+"' and dateofbirth='"+dob+"'");
    %>
    

    <%
        ResultSet rs=ps1.executeQuery();
        
        session.setAttribute("voterid","invalid"); //default value
            
        while(rs.next())
        {
            
            
            if(rs.getString("voterid")!=null)
            {
    
    session.setAttribute("voterid",voterid);//creates session with the given voterid
        response.sendRedirect("index.jsp");
            }
        }//while
  
            response.sendRedirect("index.jsp");
            
            
        %>
            

        </html>
<%

    //        }//while loop
    }
    catch(Exception e)
    {out.println(e);}
%>