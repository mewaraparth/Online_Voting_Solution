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
        <title>ONLINE VOTING PORTAL</title>
    </head>

    <body background="backimage5.jpg" style="background-size: cover"><center>
   
    
  <%
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ov","root","root123");
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
    PreparedStatement ps2=con.prepareStatement("select * from user_otp where voter_id='"+voterid+"' and first_name='"+fname+"' and middle_name='"+mname+"' and last_name='"+lname+"'");
    
    %>

  
    
      <%--
    
            
  <h1  style="text-align:center ; color: brown ; text-decoration:underline"> REGISTRATION FORM</h1>    </head>
</head>

<body background="backimage6.jpg" style="background-position:top center">
<center>
    
    
       <form action="user_otp_generation.jsp" method="get" style="color:black"> 
           <table width="850" border="1" align="center" cellpadding="0" cellspacing="0" vspace="50">
  
  <tr>

<th hspace="100" height="60" vspace="100" width="400">Voter ID        </th>
  <td>
      <input type="text" value="<%=voterid%>" disabled="" hspace="100" name="voterid" maxlength="11"/>
      <input type="hidden" value="<%=voterid%>" hspace="100" name="voterid" maxlength="11"/>
      </td>
      
  </tr>
  <tr>
<th hspace="100" height="60" vspace="100" width="400">Date Of Birth(ddmmyyyy)      </th>
  <td>
    <input type="text" value="<%=dob%>" disabled="" hspace="100" name="dob" maxlength="8"/>
        <input type="hidden" value="<%=dob%>"  hspace="100" name="dob" maxlength="8"/>
      </td>
  </tr>
   <tr>

<th hspace="100" height="60" vspace="100" width="400">First Name      </th>
  <td>
      <input type="text"  value="<%=fname%>" disabled="" hspace="100" name="fname" maxlength="20" > </input>
      <input type="hidden"  value="<%=fname%>"  hspace="100" name="fname" maxlength="20" > </input>
      </td>
      
  </tr>
  
   <tr>

<th hspace="100" height="60" vspace="100" width="400">Middle Name      </th>
  <td>
      <input type="text"disabled="" value="<%=mname%>" hspace="100" name="mname" maxlength="20"  ></input>
           <input type="hidden" value="<%=mname%>" hspace="100" name="mname" maxlength="20"  ></input>
      
      
  </tr> <tr>

<th hspace="100" height="60" vspace="100" width="400">Last Name      </th>
  <td>
      <input type="text" value="<%=lname%>"  disabled="" hspace="100" name="lname" maxlength="20"/>
           <input type="hidden" value="<%=lname%>"   hspace="100" name="lname" maxlength="20"/>
      </td>
      
  </tr>
     <tr>

<th hspace="100" height="60" vspace="100" width="400">Father / Husband       </th>
  <td>
      <input type="text" disabled="" hspace="100" name="hf" maxlength="11"  value="<%=hf%>"/>
            <input type="hidden" hspace="100" name="hf" maxlength="11"  value="<%=hf%>"/>
      </td>
      
  </tr>  
   <tr>

<th hspace="100" height="60" vspace="100" width="400">Father's / Husband's Name       </th>
  <td>
      <input type="text" disabled="" hspace="100" name="fhname" maxlength="11"  value="<%=fhname%>"/>
      <input type="hidden" hspace="100" name="hf" maxlength="11"  value="<%=hf%>"/>
      </td>
      
  </tr>

  
  <tr>
  <th hspace="100" height="60" vspace="100" width="400">Sex        </th>
  <td>
      <input type="text"  disabled="" hspace="100" name="sex" value=<% if(sex.equals("m"))
out.println("male");
      else
      {out.println("female");}
      %> />
      <input type="hidden"  hspace="100" name="sex" value=<% if(sex.equals("m"))
out.println("male");
      else
      {out.println("female");}
      %> />
      
      </td>
      
  </tr>
  <tr>
  <th hspace="100" height="60" vspace="100" width="400">Mobile Number      </th>
  <td>
      <input type="text" disabled=""   value="<%=mobile%>" hspace="100" name="mobile" />
      <input type="hidden"   value="<%=mobile%>" hspace="100" name="mobile" />
      </td>
      
  </tr>
  <tr>
  <th hspace="100" height="60" vspace="100" width="400">Address       </th>
  <td>
      <input type="text" size="80" height="100"  disabled="" value="<%=address%>" hspace="100" name="address" maxlength="11"  />
      <input type="hidden" size="80" height="100"  value="<%=address%>" hspace="100" name="address" maxlength="11"  />
      </td>
      
  </tr>
  <tr>
  <th hspace="100" height="60" vspace="100" width="400">State       </th>
  <td>
      <input type="text" disabled="" hspace="100" name="state"  value="<%=state%>"/>
      <input type="hidden" hspace="100" name="state"  value="<%=state%>"/>
      </td>
      
  </tr>
  
  <tr>
  <th hspace="100" height="60" vspace="100" width="400">Tehsil       </th>
  <td>
    <input type="text" disabled="" hspace="100" name="tehsil" maxlength="11"  value="<%=tehsil%>"/>
    <input type="hidden"  hspace="100" name="tehsil" maxlength="11"  value="<%=tehsil%>"/>
      </td>
      
  </tr>
  
  <tr>
  <th hspace="100" height="60" vspace="100" width="400">City      </th>
  <td>
    <input type="text"  disabled="" hspace="100" name="city" maxlength="11" value="<%=city%>"/>
    <input type="hidden" hspace="100" name="city" maxlength="11" value="<%=city%>"/>

      </td>
      
  </tr>
  <tr>
  <th hspace="100" height="60" vspace="100" width="400">Pin Code       </th>
  <td>
    <input type="text" disabled="" hspace="100" name="pin" maxlength="11"  value="<%=pin%>"/>
    <input type="hidden" hspace="100" name="pin" maxlength="11"  value="<%=pin%>"/>
      </td>
      
  </tr>
  <tr>
  <th hspace="100" height="60" vspace="100" width="400">Pan Card Number       </th>
  <td>
    <input type="text"  disabled="" hspace="100" name="pancard" maxlength="11" value="<%=pancard%>"/>
    <input type="hidden" hspace="100" name="pancard" maxlength="11" value="<%=pancard%>"/>
      </td>
     </tr>
     
   <tr>
  <th hspace="100" height="60" vspace="100" width="400">Passport ID Number       </th>
  <td>
    <input type="text"  disabled="" hspace="100" name="passport" maxlength="11" value="<%=passport%>"/>
    <input type="hidden" hspace="100" name="passport" maxlength="11" value="<%=passport%>"/>
      </td>
     </tr>
      
     <tr>
  <th hspace="100" height="60" vspace="100" width="400">Aadhaar Card Number       </th>
  <td>
    <input type="text" disabled="" hspace="100" name="aadhaar" maxlength="11"  value="<%=aadhaar%>"/>
    <input type="hidden" hspace="100" name="aadhaar" maxlength="11"  value="<%=aadhaar%>"/>

  </td>
     </tr>
</table>
      <input type="submit" value="SUBMIT"/>
       </form>
</center>
    </body>
    
    <form action="user_otp.jsp" method="get" >
        <input type="text" value="" name="yo"/>
        <input type="submit" value="do"/>
            
    </form>
    
    
    
    --%>
    
    
    <%

    ResultSet rs=ps2.executeQuery();
     %>
     

    <%

    boolean bool=true;
    
    while(rs.next())//if already entry exists
    {
            out.println("</br>YOUR OTP IS ALREADY GENERATED</br></br>");
       out.println("PLEASE ENTER YOUR OTP TO CONTINUE TO THE VOTING PANEL</br></br>");
   
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
  st1.executeUpdate("insert into user_otp values('"+voterid+"','"+fname+"','"+mname+"','"+lname+"','"+dob+"','"+otp+"','')");//otp entered
   %>
 <%--
   <a href="user_otp_entry.jsp?voterid=<%=voterid%>" data-bind="submit:arguments ">CONTINUE TO ENTER THE OTP</a>     
--%>

  <form action="user_otp_entry.jsp" method="post">
      <input type="hidden" name="voterid" value="<%=voterid%>">
      <input type="submit" value="CONTINUE TO ENTER THE OTP">
  </form>

<%
  
    }//if
       
       
   %>
    </center>
    </body>
</html>



<%
        }//try
    
    catch(Exception e)
    {out.println(e);}
%>