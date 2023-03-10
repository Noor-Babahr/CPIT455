<%-- 
    Document   : homepage
    Created on : Feb 3, 2023, 10:24:28 PM
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
        * {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Abel", sans-serif;
  font-size: 10px;
  scroll-behavior: smooth;
}
.wrapper {
  width: auto;
  height: 100vh;
  
  background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("https://images.unsplash.com/photo-1581594549595-35f6edc7b762?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80");
  background-position: center;
  background-size: cover;
  background-repeat: no-repeat;
  backdrop-filter: opacity(80%);
}
.Container {
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
}
.nav {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 80px;
  border-bottom: 1px solid rgba(255, 255, 255, 0.521);
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0 50px;
}
.logo {
  font-family: "Abel", sans-serif;
  font-size: 2.5rem;
  font-weight: 600;
  letter-spacing: 0.7rem;
  color: white;
  margin: 4%;
}
.menu {
  display: inline-block;
  line-height: 80px;
}
.menu ul {
  list-style: none;
  /* display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center; */
}
.menu ul li {
  display: inline-block;
}
.menu ul li a {
  text-decoration: none;
  font-family: "Raleway", sans-serif;
  font-size: 1.2rem;
  font-weight: 600;
  letter-spacing: 0.1rem;
  color: white;
  border: 1px solid transparent;
  border-radius: 4px;
  padding: 10px 15px;
  margin: 0 5px;
  transition: 0.5s ease;
}
.menu ul li a:hover {
  border-color: white;
}
.menu ul li:nth-child(5) a {
  color: #fff200;
  border: 1px solid #fff200;
}
.menu ul li:nth-child(5) a:hover {
  color: black;
  background-color: #fff200;
}
.header {
  text-align: center;
}
.header h1 {
  font-family: "Raleway", sans-serif;
  font-size: 4rem;
  font-weight: 600;
  letter-spacing: 0.2rem;
  color: white;
  padding: 45% 20px 8px;
}
.header p {
  font-family: "Raleway", sans-serif;
  font-size: 1.5rem;
  font-weight: 600;
  letter-spacing: 0.2rem;
  color: white;
  padding: 10px 15px;
}
button {
  font-size: 1.5rem;
  font-weight: 600;
  letter-spacing: 0.15rem;
  color: black;
  background-color: #fff200;
  padding: 20px 30px;
  margin: 50px 5px 0;
  border: none;
  cursor: pointer;
}

    </style>
    <body>
        <div class="wrapper">
  <div class="Container">
        <div class="nav">
            <div class="logo">
                
            </div>
            <div class="menu">
                <ul class="navMenu">
                    <li><a href="#">   </a></li>
                    <li><a href="#">Home</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="#">Contact</a></li>
                    <li><a href="signup.jsp">Registration</a></li>
                </ul>
            </div>
        </div>
        <div class="header">
            <h1>Vaccine Center</h1>
            <p></p>
            <button type="button">View Details</button>
        </div>
    </div>
</div>
    </body>
</html>
