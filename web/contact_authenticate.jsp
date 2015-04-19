<%-- 
    Document   : contact_authenticate
    Created on : 22 Mar, 2015, 6:11:22 PM
    Author     : Parth
--%>

<%@page import="java.util.Date"%>
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
        <title>JSP Page</title>
    </head>
    <body>
        
  
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


    String voterid=(String)session.getAttribute("voterid");
    
    //PreparedStatement ps2=con.prepareStatement("select * from user_otp where voterid='"+voterid+"'");
    
    %>

  
       
    <%

   // ResultSet rs=ps2.executeQuery();
     %>
     

    <%
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String subject=request.getParameter("subject");
    String message=request.getParameter("message");
   
    Date date=new Date();
    String time=date.toString();
    
    %>
   
   <%
  st.executeUpdate("insert into contact(time,voterid,name,email,subject,message) values('"+time+"','"+voterid+"','"+name+"','"+email+"','"+subject+"','"+message+"')");//contact data entry
   %>
       
   <%
  RequestDispatcher rd=request.getRequestDispatcher("contact_done.jsp");
  rd.forward(request, response);
  %>
       </div>
    </div>
        
    </body>
</html>



<%
        }//try
              
        catch(Exception e)
            {out.println(e);}
        
        
        %>
    </body>
</html>
