<%-- 
    Document   : insertimage
    Created on : 18 Mar, 2015, 9:08:26 AM
    Author     : Parth
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ovs","root","root123");
    Statement st=con.createStatement();  
            
            
            
            try{
                
            
                String ImageFile="";
                String itemName="";
                boolean isMultipart = ServletFileUpload.isMultipartContent(request);
                if(!isMultipart)
                {
                }
                else
                {
                    FileItemFactory factory=new DiskFileItemFactory();
                    ServletFileUpload upload=new ServletFileUpload(factory);
                    List items=null;
                    try{
                        items=upload.parseRequest(request);
                    }
                    
                    catch(FileUploadException e)
                    {
                    e.getMessage();
                    }
                    
                    Iterator itr=items.iterator();
                    while(itr.hasNext())
                    {
                        FileItem item=(FileItem) itr.next();
                        if(item.isFormField())
                        {
                            String name=item.getFieldName();
                            String value=item.getString();
                            if(name.equals("ImageFile"))
                            {
                                ImageFile=value;
                            }
                        }
                        else
                        {
                            try
                            {
                                itemName=item.getName();
                                File savedFile=new File("config.getServletContext().getRealPath('/')+'Example\\image-folder\\'"+itemName);
                            
                            }
                            catch(Exception e)
                            {
                                out.println("Error"+e.getMessage());
                            }
                        }
                    }
                    
                    try
                    {
                        st.executeUpdate("insert into test values ('"+itemName+"')");
                    }
                    
                    catch(Exception el)
                    {
                        out.println("Inserting error"+el.getMessage());
                    }
                }
            }
            
            catch(Exception e)
            {
            out.println(e.getMessage());
            }  
            %>
        
        
        
          
    </body>
</html>
