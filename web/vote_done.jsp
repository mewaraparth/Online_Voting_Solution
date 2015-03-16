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
        <title>ONLINE VOTING SOLUTION</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
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

    <h1>You voted for:-</h1><br>
    
    <table border="1" style="alignment-adjust: central; text-align: center">
            <th scope="row">CANDIDATE NUMBER</th>
            <th scope="row">CANDIDATE FIRST NAME</th>
            <th scope="row">CANDIDATE MIDDLE NAME</th>
            <th scope="row">CANDIDATE LAST NAME </th>
            <th scope="row">PARTY</th>
            <th scope="row">SYMBOL</th> 
            

       
        <%
           String voted=(String)request.getParameter("vote");
          ResultSet rs= st.executeQuery("select * from contender_list where contenderno='"+voted+"'");
          
        %>
        
        <%
          String voterid=(String)session.getAttribute("voterid");
          while(rs.next())
          {
          %>
          <tr>
              
                <td><%=rs.getString("contenderno")%></td> 
                <td><%=rs.getString("contenderfname")%></td>
                <td><%=rs.getString("contendermname")%></td>  
                <td><%=rs.getString("contenderlname")%></td>
                <td><%=rs.getString("partyname")%></td>
                <td><%=rs.getString("partysymbol")%></td>
          
          <%
          }//while(rs.next())
          %>
          
          
          <%
          ResultSet rs2=st.executeQuery("select votecount from vote_count where contenderno='"+voted+"'");
          %>
            
              <%
          rs2.next();
          String count=rs2.getString(1);
          int count1=Integer.parseInt(count);
          count1=count1+1;
          String count2=Integer.toString(count1);
          
          
          st.executeUpdate("update vote_count set votecount='"+count2+"' where contenderno='"+voted+"'");
          st.executeUpdate("update user_otp set voted='done' where voterid='"+voterid+"'");
          %>
          
              </table>
          
          <h1>YOUR VOTE HAS BEEN SUBMITTED</h1>
          <h1>Thank you for your Vote</h1>
          <a href="index.jsp">Go to the Home Page</a>
          
          
          
          
          
          
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