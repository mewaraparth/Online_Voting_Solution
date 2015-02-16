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
        <title>ONLINE VOTING PORTAL</title>
    </head>
    <center><body background="backimage5.jpg" style="background-size: cover">
   
<%
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ov","root","root123");
    Statement st=con.createStatement();
   
    
    %>
    
    <%
  String mobile,pin,dob,otp=null,db_otp=null;
   String voterid,fname,mname,lname,sex,fhname,address,state,tehsil,city,pancard,passport,aadhaar,hf;
   
   
    voterid=request.getParameter("voterid");//1
    otp=request.getParameter("otp");
    PreparedStatement ps1=con.prepareStatement("select * from user_all where voter_id='"+voterid+"'");
    PreparedStatement ps2=con.prepareStatement("select otp from user_otp where voter_id='"+voterid+"'");
    PreparedStatement ps3=con.prepareStatement("select * from contender_list");

    ResultSet rs1=ps2.executeQuery();
    while(rs1.next())
    {db_otp=rs1.getString("otp");}
    
    if(db_otp.equals(otp))
        
    {
        %>
        <a  style="font-size: xx-large"> WELCOME TO THE VOTING PORTAL</a></br>
        <a style="font-size: xx-large">    VOTE RESPONSIBLY</a></br></br>
        <a style="font-size: xx-large">PLEASE CHOOSE THE CANDIDATE YOU WANT TO VOTE FOR</a>
        <form action="vote_done.jsp" method="post">
        <table border="1" style="alignment-adjust: central; text-align: center">
            </br>
            </br>
            </br>
            
            <th scope="row">CONTENDER NUMBER</th>
            <th scope="row">CONTENDER NAME</th>
            <th scope="row">PARTY</th>
            <th scope="row">SYMBOL</th> 
            <th scope="row">SELECT</th> 
            

        <%
        ResultSet rs2=ps3.executeQuery();
        while(rs2.next())
        {
        
        %>
    
                    <tr>
                
                <td><%=rs2.getString(1)%></td> 
                <td><%=rs2.getString(2)%></td>
                <td><%=rs2.getString(3)%></td>  
                <td><%=rs2.getString(4)%></td>
                <td><input type="radio" value="<%=rs2.getString(1)%>" name="vote"></td>

        <%
        }//while rs2.next()
        %>
  
        </table></br></br>
                    <input type="hidden" value="<%=voterid%>" name="voterid">
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
    
    </body></center>
</html>

<%
    }//try
    catch(Exception e)
    {out.println(e);}


%>