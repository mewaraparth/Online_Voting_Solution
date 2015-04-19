<%-- 
    Document   : newjsp1
    Created on : 19 Mar, 2015, 1:32:57 PM
    Author     : Parth
--%>

<%@page import="java.io.*" %>
<%@page import="java.util.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="org.apache.commons.fileupload.disk.*" %>
<%@page import="org.apache.commons.fileupload.servlet.*" %>
<%@page import="org.apache.commons.io.output.*" %>


        <%
        File file;
        int maxFileSize = 5000* 1024;
        int maxMemSize =5000*1024;
        ServletContext context= pageContext.getServletContext();
        String filePath="C:\\Users\\Parth\\Documents\\NetBeansProjects\\Online_Voting_Solution\\web\\Example\\image-folder\\";
        
        //verify the content type
        
        String contentType = request.getContentType();
        if((contentType.indexOf("multipart/form-data")>=0))
        {
            DiskFileItemFactory factory = new DiskFileItemFactory();
            //maximum suize that will be stored in menmory
            factory.setRepository(new File("c:\\temp"));
            
           %>
yo
           <%
            
            //Create a new file upload handler
            ServletFileUpload upload=new ServletFileUpload(factory);
            //maximum file size to be uploaded
            upload.setSizeMax(maxFileSize);
            
            %>
            
            HI
            <%
                    
                    
            try
            {
            
                //Parse the request to get file items.
                List fileItems= upload.parseRequest(request);
                
                //Process the uploaded file items
                Iterator i=fileItems.iterator();
                
                out.println("<html>");
                out.println("<head>");
                out.println("<title> JSP FILE UPLOAD</title>");
                out.println("</head>");
                out.println("<body>");
  %>
  bro
  <%
                while(i.hasNext())
                {
                    FileItem fi=(FileItem)i.next();
                    if(!fi.isFormField())
                    {
                    String fieldName=fi.getFieldName();
                    String fileName= fi.getName();
                    boolean isInMemory=fi.isInMemory();
                    long sizeInBytes= fi.getSize();
                    //write the file
                    
                    if(fileName.lastIndexOf("\\")>=0)
                    {
                        file=new File(filePath+fileName.substring(fileName.lastIndexOf("\\")));
                    }
                    else
                    {
                        file=new File(filePath+fileName.substring(fileName.lastIndexOf("\\")+1));
                    }
                    
                    fi.write(file);
                    out.println("Uploaded Filename:"+filePath+fileName+"<br>");
                    }
                    
                }//while
            out.println("</body>");
            out.println("</html>");
        
        }catch(Exception ex)
                {
                out.println(ex);
                }
        }
        else
        {
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Upload</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<p>No FIle Uploaded</p>");
            out.println("</body>");
            out.println("</html>");
            
        }
        
            
                    
             %>