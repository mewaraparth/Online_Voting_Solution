<%-- 
    Document   : user_otp_generation
    Created on : Jul 10, 2014, 7:37:07 PM
    Author     : Parth Mewara
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
        <title>ONLINE VOTING PORTAL</title>
    </head>

    <body>
    <div id="main">  
          <%-- div id=nav here --%>
           <%@include file="navigation.jsp" %>          
  
   <%-- div id="sidebar"  here --%> 
    <%@include file="sidebar.jsp" %>
 
    <div class="content">
    
  <%
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ovs","root","root123");
    Statement st=con.createStatement();
   
    
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
   String otp=null;
   //Getting values from the previous page
   
    voterid=request.getParameter("voterid");//1
    fname=request.getParameter("fname");//2
    mname=request.getParameter("mname");//3
    lname=request.getParameter("lname");//4
    dob=request.getParameter("dob");//5
    sex=request.getParameter("sex");//6
    hf=request.getParameter("hf");//7
    fhname=request.getParameter("fhname");//8
    mobile=request.getParameter("mobile");//9
    address=request.getParameter("address");//10
    state=request.getParameter("state");//11
    tehsil=request.getParameter("tehsil");//12
    city=request.getParameter("city");//13
    pin=request.getParameter("pin");//14
    pancard=request.getParameter("pancard");//15
    passport=request.getParameter("passport");//16
    aadhaar=request.getParameter("aadhaar");//17
    
   
    Statement st1=con.createStatement();
    PreparedStatement ps2=con.prepareStatement("select * from user_otp where voterid='"+voterid+"'");
    
    %>

  
       
    <%

    ResultSet rs=ps2.executeQuery();
     %>
     

    <%

    boolean bool=true;
    
    while(rs.next())//if already entry exists
    {
            out.println("</br><center>YOUR OTP IS ALREADY GENERATED</center></br></br>");
       out.println("<center>PLEASE ENTER YOUR OTP TO CONTINUE TO THE VOTING PANEL</center></br></br>");
   
   bool=false;
   
   
    
    
    %>
  <%--
   <a href="user_otp_entry.jsp?voterid=<%=voterid%>" data-bind="submit:arguments ">CONTINUE TO ENTER THE OTP</a>    
  --%>
 
       
        
     
   
  <form action="user_otp_entry.jsp" method="post">
      <input type="hidden" name="voterid" value="<%=voterid%>">
      <input type="submit" value="CONTINUE TO ENTER THE OTP">
  </form>
<br>
   <h3>NOTE:- IN CASE OF LOSS OF OTP PLEASE CONTACT THE PAGE ADMIN</h3>
    
 
    <%
    }//while
//otp generation
    
    if(bool)
    {
    int num,i=50;
    double ran;

              num=(int)(Math.random()*9999) + 10000;
               i--;
               %>
               <h1 style="   font-size: xx-large" >Your OTP Password is <%=num%></h1>
        PLEASE NOTE IT DOWN AND KEEP IT SAFE UNTIL YOU VOTE
        <h3>NOTE:- THIS ONE TIME PASSWORD WILL NOT BE GENERATED AGAIN</h3>
        

   
   <br>
   
   <%
    
        otp=Integer.toString(num);
        
    %>
    
    <%--
    <%=otp%>
    --%>
        <%
  st1.executeUpdate("insert into user_otp values('"+voterid+"','"+otp+"','')");//otp entered
   %>
 <%--
   <a href="user_otp_entry.jsp?voterid=<%=voterid%>" data-bind="submit:arguments ">CONTINUE TO ENTER THE OTP</a>     
--%>

  <form action="user_otp_entry.jsp" method="post">
      <center>
          <%--
            <input type="hidden" name="voterid" value="<%=voterid%>"/>
          --%>
          <input type="submit" value="CONTINUE TO ENTER THE OTP"/>
  </center>
  </form>

<%
  
    }//if
       
       
   %>
       </div>
    </div>
        
            <%@include file="footer.jsp" %>
        
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
  <script type="text/javascript" src="js/jquery.sooperfish.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      $('ul.sf-menu').sooperfish();
      $('.top').click(function() {$('html, body').animate({scrollTop:0}, 'fast'); return false;});
    });
  </script>

    </body>
</html>



<%
        }//try
    
    catch(Exception e)
    {out.println(e);}
%>