<%-- 
    Document   : contender_entry_validate
    Created on : 16 Mar, 2015, 1:16:51 AM
    Author     : Parth
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
        <meta http-equiv="Content-Type" c"text/html; charset=UTF-8">
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
            
            String contenderfname=(String)request.getParameter("contenderfname");
            String contendermname=(String)request.getParameter("contendermname");
            String contenderlname=(String)request.getParameter("contenderlname");
            String partyname=(String)request.getParameter("partyname");
            String partysymbol=(String)request.getParameter("partysymbol");
            
            
            int cno=0;
            
            PreparedStatement ps1=con.prepareStatement("select * from contender_list");
            
            Statement st1=con.prepareCall("");
            
            PreparedStatement ps3=con.prepareStatement("");
        
        %>
        
        <%=partysymbol%>
        
        <%
            
            ResultSet rs=ps1.executeQuery();
            String contenderno=null;
            
            if(rs.isBeforeFirst())
            {
            while(rs.next())
            {
                
                contenderno=rs.getString("contenderno"); 
            }
            }
            else
            {
                contenderno="0";
            }
            
        
            
          cno=Integer.parseInt(contenderno);
          cno=cno+1;
            %>
            <%=cno%>
            <%=contenderfname%>
            <%=contendermname%>
            <%=contenderlname%>
            <%
            
            st.executeUpdate("insert into contender_list values('"+cno+"','"+contenderfname+"','"+contendermname+"','"+contenderlname+"','"+partyname+"','"+partysymbol+"')");
            st.executeUpdate("insert into vote_count values('"+cno+"','0')");

            
        %>
        
        DONE
        
         <%
    
       }//try
       
       catch(Exception e)
       {
           out.println(e);
       }   
       
    %>
    
      
        </body>
</html>
