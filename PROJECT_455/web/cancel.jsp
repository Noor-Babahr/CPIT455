<%-- 
    Document   : cancel
    Created on : Feb 8, 2023, 12:37:04 AM
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
            //int idBabahrTable = Integer.parseInt(id);
            Group10_3DB.ConnectionDB connn = new Group10_3DB.ConnectionDB();
            int Deleted = connn.deleteUser(Email);
            if (Deleted>0) {
                out.print("canceled successfully!");
            } else {
                out.print("Error");
                out.print(Deleted);
            }

        %>
    </body>
</html>
