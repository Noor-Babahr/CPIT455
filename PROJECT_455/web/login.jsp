<%-- 
    Document   : login
    Created on : Jan 30, 2023, 9:26:12 PM
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
    </head>

   <style>
/*DEFAULT*/
input,button,::placeholder,a,form,::-webkit-input-placeholder{
transition:0.5s;
color:#fff;
}
a{
text-decoration:none;
cursor:pointer;
}


/*ANIMATION*/
.animate {
-webkit-animation: animatezoom 0.6s;
animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
from {-webkit-transform: scale(0)} 
to {-webkit-transform: scale(1)}
}

@keyframes animatezoom {
from {transform: scale(0)} 
to {transform: scale(1)}
}

body{
margin:0;
background-image:url("https://images.unsplash.com/photo-1618015358954-344302f421a4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2076&q=80");
background-repeat:no-repeat;
background-size:cover;
width:100%;
height:100%;
}

*, *:after, *:before {
-webkit-box-sizing: border-box;
-moz-box-sizing: border-box;
box-sizing: border-box;
}

.Signup_Form{
width:100%;
height:100vh;
display:flex;
align-items:center;
justify-content:center;
color:#fff;
font-family: 'Recursive', sans-serif;
}

.Signup_Form form{
width:60%;
box-shadow:0px 6px 16px -6px rgba(1,1,1,0.5);
border-radius:3px;
background:rgba(1,1,1,0.5);
padding:30px;
text-align:center;
position:relative;
}

.Signup_Form .fa-save{
padding:10px;
background:#000;
border:1px solid #fff;
border-radius:50%;
color:#fff;
text-align:center;
float:right;
position:absolute;
right:-10px;
top:-10px;
}

.Signup_Form form:hover{
background:rgba(1,1,1,1);
}

.Signup_Form input{
width:90%;
padding:10px;
background:transparent;
display:block;
outline:none;
border:0;
border-bottom:1px solid rgba(255,255,255,0.5);
margin:20px 0px;
}

.Signup_Form input:hover{
border-bottom:1px solid rgba(255,255,255,1);
}

.Signup_Form .btn1{
width:150px;
padding:10px 20px;
text-align:center;
background:transparent;
border:1px solid #fff;
color:#fff;
outline:none;
display:block;
margin:20px 0px;
}

.Signup_Form .btn1:hover{
background:#fff;
color:#000;
}

input:focus::placeholder,input:focus::-webkit-input-placeholder  {
position:relative;
top:-10px; 
font-size:12px;
color:rgba(255,255,255,0.5);
}

.Signup_Form form section{
width:100%;
margin:40px 0;
}

.Signup_Form form section span{
width:50%;
}

.Signup_Form form section span a:hover{
color:rgba(255,255,255,0.5);
}

.Signup_Form form section span:nth-child(1){
float:left;
}
.Signup_Form form section span:nth-child(2){
text-align:right;
}




/*POPUP*/
#popup{
visibility: hidden;
min-width: 250px;
margin-left: -125px;
background-color: #333;
color: #fff;
text-align: center;
border-radius: 2px;
padding: 16px;
position: fixed;
z-index: 1;
left: 50%;
bottom: 30px;
font-size: 17px;
font-family: 'Oswald', sans-serif;
}

#popup.show {
visibility: visible;
-webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
animation: fadein 0.5s, fadeout 0.5s 2.5s;
}

#popup a{
margin:0 10px;
}

@-webkit-keyframes fadein {
from {bottom: 0; opacity: 0;} 
to {bottom: 30px; opacity: 1;}
}

@keyframes fadein {
from {bottom: 0; opacity: 0;}
to {bottom: 30px; opacity: 1;}
}

@-webkit-keyframes fadeout {
from {bottom: 30px; opacity: 1;} 
to {bottom: 0; opacity: 0;}
}

@keyframes fadeout {
from {bottom: 30px; opacity: 1;}
to {bottom: 0; opacity: 0;}
}

@media (max-width:720px){
.Signup_Form form{
min-width:90%;
}
.Signup_Form a{
font-size:12px;
}
}


.credits{
  background:#1e1e1e;
  color:gray;
  font-size:13px;
  padding:10px;
  position:fixed;
  right:0;
  bottom:20px;
}
    </style>          
       <!--GOOGLE FONTS-->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Recursive:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300&display=swap" rel="stylesheet"> 
        
<div class="Signup_Form">
<form action="Verify.jsp" method="POST" id="login" class="animate">
    
<i title="REMEMBER" onclick="savedetails()" class="fa fa-save"></i>
<center>
<h1>SIGN IN</h1>
<input type="text" name="UserName" placeholder="UserName*" required/>
<input type="password" name="Password" placeholder="Password*" required/>
<button class="btn1" type="submit">SignIn</button>
<section>
   
<span><a href="ShowPersonalEnfo.jsp">Forgot Password?</a></span>
<span><a href='signup.jsp'> Don't have an account?</a></span>
</section>
</center>
</form>


</div>
<div id="popup"></div>



<div class="credits"> </div>
    </body>
</html>
