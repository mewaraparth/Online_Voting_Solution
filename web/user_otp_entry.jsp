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
        <title>ONLINE VOTING PORTAL</title>
    <h1  style="text-align:center ; color: brown ; text-decoration:underline">OTP VERIFICATION</h1>    </head>


<%
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ov","root","root123");
    Statement st=con.createStatement();
   
    
    %>
    
    <%
  String mobile,pin,dob,otp=null;
   String voterid,fname,mname,lname,sex,fhname,address,state,tehsil,city,pancard,passport,aadhaar,hf;
    
   
    voterid=request.getParameter("voterid");//1
    PreparedStatement ps1=con.prepareStatement("select * from user_all where voter_id='"+voterid+"'");
    PreparedStatement ps2=con.prepareStatement("select otp from user_otp where voter_id='"+voterid+"'");
    

    /*  
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
    
  */
    %>
 
    
    
    <%
    
    
        ResultSet rs=ps1.executeQuery();
        
        while(rs.next())
        {
//        if(!rs.getString("mobile").equals(null))
  //      {}
    mobile=rs.getString("mobile");//8
    pin=rs.getString("pincode");//13
    dob=rs.getString("date_of_birth");//5
    fname=rs.getString("first_name");//2
    mname=rs.getString("middle_name");//3
    lname=rs.getString("last_name");//4
    sex=rs.getString("sex");//6
    fhname=rs.getString("fh_name");//7
    address=rs.getString("address");//9
    state=rs.getString("state");//10
    tehsil=rs.getString("tehsil");//11
    city=rs.getString("city");//12
    pancard=rs.getString("pancard");//14
    passport=rs.getString("passport");//15
    aadhaar=rs.getString("aadhaar");//16
    hf=rs.getString("father_or_husband");
        
   

    
    
    %>
    
  


<body background="backimage5.jpg" style="background-size: cover">
<center>
    
       <form action="user_validate_otp.jsp" method="post" style="color:black" >
           <table width="800" border="1" align="center" cellpadding="0" cellspacing="0" vspace="50">
  
  <tr>

<th hspace="100" height="60" vspace="100" width="400">Voter ID        </th>
  <td>
      <input type="text" value="<%=voterid%>" disabled="" hspace="100" required=""name="voterid" maxlength="11"/>
            <input type="hidden" value="<%=voterid%>"  hspace="100" required=""name="voterid" maxlength="11"/>
      </td>
      
  </tr>
  <tr>
<th hspace="100" height="60" vspace="100" width="400">Date Of Birth(ddmmyyyy)      </th>
  <td>
      <input type="text" value="<%=dob%>" disabled="" hspace="100" name="dob" required=""maxlength="8"/>
      <input type="hidden" value="<%=dob%>"  hspace="100" name="dob" required=""maxlength="8"/>
      </td>
  </tr>
   <tr>

<th hspace="100" height="60" vspace="100" width="400">First Name      </th>
  <td>
      <input type="text" value="<%=fname%>" disabled="" hspace="100" name="fname"required="" maxlength="20"/>
      <input type="hidden" value="<%=fname%>"  hspace="100" name="fname"required="" maxlength="20"/>
      </td>
      
  </tr>
  
   <tr>

<th hspace="100" height="60" vspace="100" width="400">Middle Name      </th>
  <td>
      <input type="text" value="<%=mname%>" disabled="" hspace="100" name="mname" maxlength="20"/>
            <input type="hidden" value="<%=mname%>" hspace="100" name="mname" maxlength="20"/>
      </td>
      
  </tr> <tr>

<th hspace="100" height="60" vspace="100" width="400">Last Name      </th>
  <td>
      <input type="text" value="<%=lname%>" disabled="" hspace="100" name="lname"required="" maxlength="20"/>
      <input type="hidden" value="<%=lname%>" hspace="100" name="lname"required="" maxlength="20"/>
      </td>
      
  </tr>
  
     <tr>
         <%
         ResultSet rs2= st.executeQuery("select voted from user_otp where voter_id='"+voterid+"'");
      
        while(rs2.next())
        {
         if(!rs2.getString(1).equals("done"))
         {
             %>
<th hspace="100" height="60" vspace="100" width="400">One Time Password (OTP code)      </th>
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
      

</center>
</body>
    
</html>

    
    
    <%
        }//while
    }//try
    catch(Exception e)
    {out.println(e);}
    %>