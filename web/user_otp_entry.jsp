<%-- 
    Document   : user_otp
    Created on : Jul 10, 2014, 6:30:26 PM
    Author     : Parth Mewara
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ONLINE VOTING SOLUTION</title>
 <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
    </head>
       
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
  String mobile,pin,dob,otp=null;
   String voterid,fname,mname,lname,sex,fhname,address,state,tehsil,city,pancard,passport,aadhaar,hf;
    
   
    voterid=(String)session.getAttribute("voterid");
    PreparedStatement ps1=con.prepareStatement("select * from user_all where voterid='"+voterid+"'");
    PreparedStatement ps2=con.prepareStatement("select otp from user_otp where voterid='"+voterid+"'");
    

    %>
 
    

    <body> 
    
     <div id="main"> 
          <%-- div id=nav here --%>
           <%@include file="navigation.jsp" %>          
  
   <%-- div id="sidebar"  here --%> 
    <%@include file="sidebar.jsp" %>
  
      <div class="content">
         
          
  
    <%
    
    
        ResultSet rs=ps1.executeQuery();
        
        while(rs.next())
        {
    %>

  
         <% 
         ResultSet rs2= st.executeQuery("select voted from user_otp where voterid='"+voterid+"'");
      
        while(rs2.next())
        {
         if(!rs2.getString(1).equals("done"))
         {
             %>

             
            <form action="user_validate_otp.jsp" method="post" style="color:black" >
              <table>

               <tr>
             <th hspace="100" height="60" vspace="100" width="400">One Time Password (OTP code)</th>
       <td>
      <input type="text" value="" hspace="100" name="otp" maxlength="20"/>
      </td>

  </tr>
           </table>
           <input type="submit" value="SUBMIT">
                  </form>
                 <% 
         }//if the vote is not yet been casted
         else
         {out.println("<h1>YOU HAVE ALREADY CASTED YOUR VOTE</H1>");
         out.println("<a href='index.jsp'>GO TO THE HOME PAGE</a>");
         }
        
        }

      %>

      
            
    
    <%
        }//while
    }//try
    catch(Exception e)
    {out.println(e);}
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
