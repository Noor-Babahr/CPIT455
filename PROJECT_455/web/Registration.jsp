<%-- 
    Document   : Registration
    Created on : Jan 30, 2023, 10:02:32 PM
    Author     : noorbabahr
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
                <%
            //String id = request.getParameter("idBabahrTable");
            String ID = request.getParameter("ID");
            String FirstName = request.getParameter("FirstName");             
            String LastName = request.getParameter("LastName");
            String UserName = request.getParameter("UserName");
            String Email = request.getParameter("Email");        
            String Password = request.getParameter("Password");
            String PhoneNum = request.getParameter("PhoneNum");
            int id = Integer.parseInt(ID);            
            int Phone = Integer.parseInt(PhoneNum);

    
            Group10_3DB.ConnectionDB con = new Group10_3DB.ConnectionDB();
            //NConnectorDB.NoorDBConnection conNB = new NConnectorDB.NoorDBConnection();
            int isAdded = con.AddEnfo(id, FirstName, LastName, UserName,Email, Password, Phone); 
            
            if(isAdded>0)       
            response.sendRedirect("success.jsp");
            //out.print("Data is successfully inserted!");

            else
            response.sendRedirect("error.jsp");
            //out.print("Error"); 
            //out.print("<a href='login.jsp'> login</a>");
        %>
    </body>
</html>