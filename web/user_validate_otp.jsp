<%-- 
    Document   : user_validate_otp
    Created on : Jul 11, 2014, 1:14:40 AM
    Author     : Parth Mewara
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ONLINE VOTING SOLUTION</title>
        <link rel="stylesheet" href="css/style.css"/>
        <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
    </head>
    <body>
   
        
    
  <div id="main">  f
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
  String voterid,otp=null,db_otp=null;
  
   
    voterid=(String)session.getAttribute("voterid");
    otp=request.getParameter("otp");
    PreparedStatement ps1=con.prepareStatement("select * from user_all where voterid='"+voterid+"'");
    PreparedStatement ps2=con.prepareStatement("select otp from user_otp where voterid='"+voterid+"'");
    PreparedStatement ps3=con.prepareStatement("select * from contender_list");

    ResultSet rs1=ps2.executeQuery();
    while(rs1.next())
    {db_otp=rs1.getString("otp");}
   
    if(db_otp.equals(otp))
        
    {
        %>
       
        <a  style="font-size: xx-large; margin-left: 13%;"> WELCOME TO THE VOTING PORTAL</a></br>
        <a style="font-size: xx-large;margin-left: 25%;">    VOTE RESPONSIBLY</a><br><br><br>
        <a style="font-size: xx-large;margin-left: 5%; ">PLEASE CHOOSE THE CANDIDATE TO VOTE</a>
        <form action="vote_done.jsp" method="post">
        <table border="1" style="alignment-adjust: central; text-align: center">
            </br>
            </br>
            </br>
            
            <th scope="row">CANDIDATE NUMBER</th>
            <th scope="row">CANDIDATE FIRST NAME</th>
            <th scope="row">CANDIDATE MIDDLE NAME</th>
            <th scope="row">CANDIDATE LAST NAME </th>
            <th scope="row">PARTY</th>
            <th scope="row">SYMBOL</th> 
            <th scope="row">SELECT</th> 
            

        <%
        ResultSet rs2=ps3.executeQuery();
        while(rs2.next())
        {
        
        %>
    
                    <tr>
                
                <td><%=rs2.getString("contenderno")%></td> 
                <td><%=rs2.getString("contenderfname")%></td>
                <td><%=rs2.getString("contendermname")%></td>  
                <td><%=rs2.getString("contenderlname")%></td>
                <td><%=rs2.getString("partyname")%></td>
                <td><%=rs2.getString("partysymbol")%></td>
                <td><input type="radio" required="" value="<%=rs2.getString("contenderno")%>" name="vote"></td>

        <%
        }//while rs2.next()
        %>
  
        </table></br>
                    
        <input type="submit" value="SUBMIT YOUR VOTE"></br>
        <h3>NOTE:- VOTE ONCE SUBMITTED WILL NOT CHANGE  </h3>
        
   
        </form>
    <%
    }//if otp matches
    
    else
    {out.println("<h1>NOT VALID</h1></br></br></br>");
        out.println("<h3>NOTE:- IN CASE OF LOSS OF OTP PLEASE CONTACT THE PAGE ADMIN</h3>");
    }
    
    
    
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

  <script  type="text/javascript" src="js/coin-slider.js"></script>
    </body>
</html>

<%
    }//try
    catch(Exception e)
    {out.println(e);}


%>