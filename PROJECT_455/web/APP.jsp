<%-- 
    Document   : APP
    Created on : Feb 2, 2023, 11:47:16 PM
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
       
        <%

            String Email = request.getParameter("Email");
            String Date = request.getParameter("Date");
            String Time = request.getParameter("Time");
            String VaccineType = request.getParameter("VaccineType");
  
            Group10_3DB.ConnectionDB con = new Group10_3DB.ConnectionDB();
            int isAdded = con.AddInfoAppointment(Email, Date, Time ,VaccineType); 
            
            if(isAdded>0) 
            response.sendRedirect("success.jsp");
             
            //response.sendRedirect("ShowMyAppointment.jsp");

            else
            response.sendRedirect("error.jsp");
 
 
        %>
    </body>
</html>
