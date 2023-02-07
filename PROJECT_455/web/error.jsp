<%-- 
    Document   : rightverify
    Created on : Jan 30, 2023, 7:53:24 PM
    Author     : noorbabahr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body {
	background-color: #ececec;
	color: rgb(68, 68, 68);
	text-align: center;
	
	div {
		font-family: 'Segoe UI', 'Helvetica Neue', 'Tahoma', 'Verdana', sans-serif;
		font-size: 13px;
		
		h1 {
			font-size: 24px;
			font-weight: normal;
			margin-bottom: 5px;
		}
	}
}

.iconBackground {
	background-color: #D86344;
	margin: 0 auto;
	width: 40px;
	height: 40px;
	border-radius: 100%;
}

.iconBarLeft {
	width: 27px;
	height: 4px;
	position: relative;
	top: 45%;
	margin-left: 7px;
	background-color: #ffffff;
	transform: rotate(45deg);
	border-radius: 1px;
}

.iconBarRight {
	width: 27px;
	height: 4px;
	position: relative;
	top: 35%;
	margin-left: 7px;
	background-color: #ffffff;
	transform: rotate(-45deg);
	border-radius: 1px;
}
    </style>
    <body>
       <body>
	<div style="display:block; padding-top:108px;">
		<div class="iconBackground">
			<div class="iconBarLeft"></div>
			<div class="iconBarRight"></div>
		</div>
		<div>
			<h1>Something Wrong!</h1>
		</div>
		<div>
			Sorry,some thing was incorrect . Please double-check your information you entered .
                        
		</div>
		<div>
		         try again 
                        <a href='login.jsp'> login ,</a>
                        <a href='signup.jsp'> sign up</a>
		</div>
	</div>
</body>
    </body>
</html>
