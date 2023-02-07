<%-- 
    Document   : Update
    Created on : Feb 7, 2023, 8:38:54 PM
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
    <h1>Reset your Password </h1>
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
            String ID = request.getParameter("ID");
            int id = Integer.parseInt(ID);
            
            Group10_3DB.ConnectionDB connn = new Group10_3DB.ConnectionDB();
            ResultSet result = connn.getUserInfo(id);
            while (result.next()) {
            String UserName = result.getString("UserName");
            String Password = result.getString("Password");
        %>
        <div class="container">
            <div class="col">
                <div class="row">
                    <form name="Update" action="ValidateUpdate.jsp" method="POST">
   
                    <p> You can change your password by filling this from:</p>
                    <h4>ID</h4>
                    <input type="text" class="input"name="ID" value="<%=ID%>" readonly><!-- comment -->
                    <h4>User name</h4>
                    <input type="text" class="input"name="UserName" value ="<%=UserName%>" ><!-- comment -->
                    <h4>New Password</h4>
                    <input type="text" class="input"name="Password" value ="<%=Password%>"><!-- comment -->
                    <br> <br>
                    <input type="submit" value="Update" name="update" style="background-color:#47CD82"/>
                    </form>
                    
                </div>
            </div>
        </div>
        <%}%> 
    </body>
</html>
