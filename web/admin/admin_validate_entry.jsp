<%-- 
    Document   : admin_validate_entry
    Created on : Jul 7, 2014, 5:18:05 PM
    Author     : Parth Mewara
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ONLINE VOTING PORTAL</title>
    </head>
    <body background="backimage9.jpg" style="background-position: center">
    <center>
    <h1  style="text-align:center ; color:blueviolet ; text-decoration:underline" >DATA VALIDATE</h1>
    

<%
    try{
            String connectionclass=request.getSession().getServletContext().getInitParameter("connectionclass");
            String connectionprotocol=request.getSession().getServletContext().getInitParameter("connectionprotocol");
            String username=request.getSession().getServletContext().getInitParameter("username");
            String password=request.getSession().getServletContext().getInitParameter("password");

            Class.forName(connectionclass);
            Connection con=DriverManager.getConnection(connectionprotocol,username,password);
            Statement st=con.createStatement();
 
    %>
    
    <%
  String mobile,pin,dob;
   String voterid,fname,mname,lname,sex,fhname,address,state,tehsil,city,pancard,passport,aadhaar,hf,update=null;
    
    mobile=request.getParameter("mobile");//8
    pin=request.getParameter("pin");//13
    dob=request.getParameter("dob");//5
    voterid=request.getParameter("voterid");//1
    fname=request.getParameter("fname");//2
    mname=request.getParameter("mname");//3
    lname=request.getParameter("lname");//4
    sex=request.getParameter("sex");//6
    fhname=request.getParameter("fhname");//7
    address=request.getParameter("address");//9
    state=request.getParameter("state");//10
    tehsil=request.getParameter("tehsil");//11
    city=request.getParameter("city");//12
    pancard=request.getParameter("pancard");//14
    passport=request.getParameter("passport");//15
    aadhaar=request.getParameter("aadhaar");//16
    hf=request.getParameter("hf");
    update=request.getParameter("update");
    
//    st.executeUpdate("insert into user_all values('"+voterid+"','"+fname+"','"+mname+"','"+lname+"','"+dob+"','"+sex+"','"+fhname+"','"+mobile+"','"+address+"','"+state+"','"+tehsil+"','"+city+"','"+pin+"','"+pancard+"','"+passport+"','"+aadhaar+"'");
    PreparedStatement ps1=con.prepareStatement("insert into user_all values('"+voterid+"','"+fname+"','"+mname+"','"+lname+"','"+dob+"','"+sex+"','"+hf+"','"+fhname+"','"+mobile+"','"+address+"','"+state+"','"+tehsil+"','"+city+"','"+pin+"','"+pancard+"','"+passport+"','"+aadhaar+"')"); 
    PreparedStatement ps2=con.prepareStatement("insert into user_login values('"+voterid+"')");
            
    PreparedStatement ps3=con.prepareStatement("update user_all set voterid='"+voterid+"',firstname='"+fname+"',middlename='"+mname+"',lastname='"+lname+"',dateofbirth='"+dob+"',sex='"+sex+"',fatherorhusband='"+hf+"',fhname='"+fhname+"',mobile='"+mobile+"',address='"+address+"',state='"+state+"',tehsil='"+tehsil+"',city='"+city+"',pincode='"+pin+"',pancard='"+pancard+"',passport='"+passport+"',aadhaar='"+aadhaar+"' where voterid='"+update+"'");
    PreparedStatement ps4=con.prepareStatement("update user_login set voterid='"+voterid+"',firstname='"+fname+"',middlename='"+mname+"',lastname='"+lname+"',dateofbirth='"+dob+"' where voterid='"+update+"'");
    %>
    
    <%
    
    if(!update.equals(""))
    {
        ps3.executeUpdate();
        out.println("querty3");
        ps4.executeUpdate();
        out.println("query4");
     
    }
    else
    {
    
    ps1.executeUpdate();
    %>
    
    
    
<%--    <h1>DONE ENTRY IN 1ST TABLE</h1>
--%>
    <% ps2.executeUpdate();
    %>
    
    
    <%
    String sql="";
    
    %>
    <%--
    <h1>Done ENTRY IN 2ND </h1>
    --%>
<a href="admin_dataentry.jsp">GO TO ADD MORE ENTRY</a>
<br>
<br>
<br>
<a href="admin_login.jsp">GO TO THE ADMIN/USER SELECTION PANEL</a>
    <%
       RequestDispatcher rd=request.getRequestDispatcher("upload_user_pic.jsp");
       rd.forward(request, response);
     //response.sendRedirect("admin_dataentry.jsp");
    }//else
    }//try
    catch(Exception e)
    {out.println(e);}
    %>
    </center>
    </body>
</html>