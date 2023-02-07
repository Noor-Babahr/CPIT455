<%-- 
    Document   : ValidateUpdate
    Created on : Feb 7, 2023, 8:41:25 PM
    Author     : noorbabahr
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <style>
body {
	display: grid;
	place-items: center;
        background-image:url("https://images.unsplash.com/photo-1626957341637-6d7122ce692e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80");
	
	margin: 0;
	padding: 0 1.5rem;
}
    </style>
    <body>
                <%
            try{
            String ID = request.getParameter("ID");
            String UserName = request.getParameter("UserName");
            String Password = request.getParameter("Password");
            
            int id = Integer.parseInt(ID);
            
            Group10_3DB.ConnectionDB connn = new Group10_3DB.ConnectionDB();
            int updated = connn.updateUserInfo( UserName, Password,id);
            if (updated > 0) {
                out.print(UserName+" ");
                out.print("passsword is successfully changed!");
                 out.print("<a href='ShowPersonalEnfo.jsp'> Back to show my info page</a>");
            } else {
                out.print(updated);
                out.print("Error");
                out.print("<a href='ShowPersonalEnfo.jsp'> try again</a>");
            } 
            } catch(Exception e){
                out.println(e.getMessage());
            }
           
        %>
    </body>
</html>
