<%-- 
    Document   : appointmentDIALA
    Created on : Jan 31, 2023, 7:36:25 PM
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
            //ID, FirstName, LastName, UserName, Password, PhoneNum, DOB
            //String id = request.getParameter("idBabahrTable");
            String ID = request.getParameter("ID");
            String Email = request.getParameter("Email");
            String PhoneNum = request.getParameter("PhoneNum");
            String Day = request.getParameter("Day");
            String Month= request.getParameter("Month");
            String Time = request.getParameter("Time");
            String Notes = request.getParameter("Notes");
            String VaccineType = request.getParameter("VaccineType");
            //Date DOB = request.getParameter("DOB");
            int id = Integer.parseInt(ID);
            int Phone = Integer.parseInt(PhoneNum);
            int time = Integer.parseInt(Time);
            int day = Integer.parseInt(Day);
            
            //int idBabahrTable = Integer.parseInt(id);      
            Group10_3DB.ConnectionDB con = new Group10_3DB.ConnectionDB();
            int isAdded = con.AddEnfoappointment(id, Email, Phone, day, Month, time, Notes, VaccineType); 
            
            if(isAdded>0)          
                out.print("Data is successfully inserted!");
            else
                out.print("Error");
                
            out.print("<a href='error.jsp'> login</a>");
        %>
    </body>
</html>
