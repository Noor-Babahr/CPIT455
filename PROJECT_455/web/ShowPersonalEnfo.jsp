<%-- 
    Document   : ShowPersonalEnfo
    Created on : Feb 7, 2023, 8:12:10 PM
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
                <h1>Your Personal Information </h1>
        <%
            Group10_3DB.ConnectionDB connn = new Group10_3DB.ConnectionDB();
            ResultSet result = connn.ShowMyInfo();
        %>        
        <div>

        </div>
        <br>
        
        <table border="1">
            <tbody>
                <tr>
                    <td> ID</td>
                    <td> First name</td>
                    <td> Last name</td>
                    <td> User name</td>
                    <td> Email</td>
                    <td> Password</td>                  
                    <td> Phone Number</td>
 

               </tr>
                <% while (result.next()) {%>
                <tr>
                    <td><%= result.getString("ID")%></td>
                    <td><%= result.getString("FirstName")%></td>
                    <td><%= result.getString("LastName")%></td>
                    <td><%= result.getString("UserName")%></td>
                    <td><%= result.getString("Email")%></td>
                    <td><%= result.getString("Password")%></td>
                    <td><%= result.getString("PhoneNum")%></td>
                    
                    <td>
                    <a href="Update.jsp?ID=<%=result.getString("ID")%>"> <button type="button" class="btn btn-outline-success">Modify your password</button></a>
                    </td>
  
                </tr>
                <% }
                %>

            </tbody>
        </table>
    </body>
</html>
