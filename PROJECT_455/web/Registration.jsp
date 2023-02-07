<%-- 
    Document   : Registration
    Created on : Jan 30, 2023, 10:02:32 PM
    Author     : noorbabahr
--%>
<%@ page import="java.sql.*" %>
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
            String ID = request.getParameter("ID");
            int id = Integer.parseInt(ID); 
            if(ID!=null && ID.length()==10){
            
            String FirstName = request.getParameter("FirstName");
            if(FirstName!=null && FirstName.matches("^[a-zA-Z]*$")) {
            
            String LastName = request.getParameter("LastName");
            if(LastName!=null && LastName.matches("^[a-zA-Z]*$")) {
            
            String UserName = request.getParameter("UserName");
            if(UserName!=null && UserName.matches("^[a-zA-Z]*$")) {
            
            String Email = request.getParameter("Email"); 
            
            String Password = request.getParameter("Password");
            if(Password!=null && Password.length()>=8){
            
            String PhoneNum = request.getParameter("PhoneNum");           
            int Phone = Integer.parseInt(PhoneNum);
            if(PhoneNum!=null && PhoneNum.length()==10){

    
            Group10_3DB.ConnectionDB connn = new Group10_3DB.ConnectionDB();
            int isAdded = connn.AddEnfo(id, FirstName, LastName,UserName,Email, Password, Phone); 
            
           
            if(isAdded>0)       
            response.sendRedirect("APPFORM.jsp");
            //out.print("Data is successfully inserted!");
            
            }}}}}
            }
            else
            response.sendRedirect("error.jsp");
        %>
      
    </body>
</html>