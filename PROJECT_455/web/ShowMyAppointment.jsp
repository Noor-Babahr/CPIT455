<%-- 
    Document   : ShowMyAppointment
    Created on : Feb 7, 2023, 6:46:42 PM
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
        * {
  box-sizing: border-box;
}
body {
  background-image:url("https://images.unsplash.com/photo-1618015358954-344302f421a4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2076&q=80");
}
h1 {
  position: relative;
  top: 10px;
  left: 50%;
  transform: translatex(-350px);
  margin-bottom: 20px;
  text-shadow: 2px 1px #aaaaaa;
}
.wrapper {
  width: 700px;
  padding: 20px 40px 20px 0px;
  margin: auto;
  background-image:url("https://images.unsplash.com/photo-1618015358954-344302f421a4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2076&q=80");
  border: 2px solid #777777;
  border-radius: 20px;
  box-shadow: 2px 2px 15px #777777;
}
ul.twocolumn,
ol.twocolumn {
  -moz-column-count: 1;
  -moz-column-gap: 5px;
  -ms-column-count: 1;
  -ms-column-gap: 5px;
  -webkit-column-count: 1;
  -webkit-column-gap: 5px;
  column-count: 1;
  column-gap: 5px;
  color: #cccccc;
  list-style-position: inside;
}
li .hide-list {
  height: 0px;
  overflow: hidden;
}
li {
  padding: 10px 10px 0 10px;
  margin: 10px;
  background-color: #eeeeee;
  border-radius: 15px;
  box-shadow: 1px 1px 8px #777777;
  overflow: hidden;
}
h3 {
  display: inline-block;
  text-decoration: underline;
  margin-left: 10px;
  color: #000000;
}
p {
  margin: -15px 0 0 46px;
  color: #555555;
  text-align: justify;
}
li .fas.fa-user-circle {
  font-size: 36px;
}
p .fas.fa-heart {
  padding: 5px 10px 5px 192px;
  margin: 20px 0 0 -60px;
  color: #ffffff;
  font-size: 16px;
  word-wrap: normal;
  background: #cccccc;
  border-top: 1px solid #000000;
}
p .fas.fa-comment-alt {
  padding: 5px 75px 5px 75px;
  margin: 20px 0 0 -4px;
  color: #ffffff;
  font-size: 16px;
  word-wrap: normal;
  background: #cccccc;
  border-top: 1px solid #000000;
}
p .fas.fa-eye {
  padding: 5px 193px 5px 10px;
  margin: 20px -60px 0 0px;
  color: #ffffff;
  font-size: 16px;
  word-wrap: normal;
  background: #cccccc;
  border-top: 1px solid #000000;
}
.reply {
  display: block;
  width: 113%;
  margin-left: -60px;
  padding: 10px 0 15px 100px;
  color: #0000ff;
  background-color: #cccccc;
  cursor: pointer;
}
hr {
  width: 86px;
  margin-top: -15px;
  margin-bottom: 10px;
  margin-left: 40px;
  border-color: #0000ff;
  background-color: #0000ff;
}

    </style>
    <body>  
        <%
            Group10_3DB.ConnectionDB connn = new Group10_3DB.ConnectionDB();
            ResultSet result = connn.ShowMyAppointment();
          
        %>        
        <div>
            <center>          
                <br>
        <table border="1">
            <tbody>
                <tr>
                   Your Appointment Details
                </tr>
                <tr>
                    <td> Email</td>
                    <td> Date</td>
                    <td> Time</td>
                     <td> Vaccine Type</td>
            </tr>
                <% while (result.next()) {%>
                <tr>
                    <td><%= result.getString("Email")%></td>
                    <td><%= result.getString("Date")%></td>
                    <td><%= result.getString("Time")%></td>
                    <td><%= result.getString("VaccineType")%></td>
                    
                    
                    
                   <td>
                        <a href="cancel.jsp?Email=<%=result.getString("Email")%>"> <button type="button" class="btn btn-outline-danger">Cancel</button></a>
                    </td>
            </tr>
                <% }
                %>

            </tbody>
        </table>  
            </center>
        </div>

    </body>
</html>
