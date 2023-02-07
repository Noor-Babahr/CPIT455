<%-- 
    Document   : Verify
    Created on : Jan 30, 2023, 7:50:34 PM
    Author     : noorbabahr
--%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display the user Information</title>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" integrity="sha512-UJfAaOlIRtdR+0P6C3KUoTDAxVTuy3lnSXLyLKlHYJlcSU8Juge/mjeaxDNMlw9LgeIotgz5FP8eUQPhX1q10A==" crossorigin="anonymous" />
  <link rel=heet" href="style.css" />
</head>
    <body>
    
        <h1> </h1>
       <%
            String UserName = request.getParameter("UserName");
            String Password = request.getParameter("Password");
            
            if(UserName!=null && UserName.matches("^[a-zA-Z]*$")) {
            if(Password!=null && Password.length()>=8){
            Group10_3DB.ConnectionDB conn = new Group10_3DB.ConnectionDB();
            ResultSet isExist = conn.userExist(UserName, Password); 
   
           if (isExist.next()){
           response.sendRedirect("APPFORM.jsp");
           
              }else{
          response.sendRedirect("error.jsp");
}
            }
            }else{
           response.sendRedirect("error.jsp");

           }
            %>
    </body>
</html>

