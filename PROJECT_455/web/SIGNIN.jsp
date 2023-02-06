<%-- 
    Document   : SIGNIN
    Created on : Feb 5, 2023, 9:39:14 PM
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
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  background-color: dodgerblue;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  font-family: Helvetica, sans-serif;
}

.container {
  background-color: white;
  width: 400px;
}

header {
  background-color: #f0f0f0;
  padding: 15px 40px;
  margin-bottom: 20px;
}

.form {
  padding: 20px 40px;
}

.form-control {
  display: flex;
  flex-direction: column;
  margin-bottom: 20px;
}

label {
  margin-bottom: 5px;
}

input {
  padding: 10px;
  outline: none;
  border: 1px solid gainsboro;
}

small {
  color: #e75c3c;
  margin-top: 5px;
  visibility: hidden;
}

button {
  background-color: dodgerblue;
  color: white;
  outline: none;
  border: none;
  width: 100%;
  padding: 10px;
  cursor: pointer;
  transition: background-color 0.3s;
}

button:hover {
  background-color: blue;
}

.form-control.error small {
  visibility: visible;
}

.form-control.error input {
  border-color: #e75c3c;
}

.form-control.success input {
  border-color: #2ecc71;
}

    </style>
    <body>
       <div class="container">
  <header>
    <h1>Sign Up</h1>
  </header>

  <form class="form">
    <div class="form-control">
      <label for="username">Username</label>
      <input type="text" name="UserName" id="username">
      <small>Error Message</small>
    </div>

    <div class="form-control">
      <label for="email">Email</label>
      <input type="email" name="Email" id="email">
      <small>Error Message</small>
    </div>

    <div class="form-control">
      <label for="password">Password</label>
      <input type="password" name="Password" id="password">
      <small>Error Message</small>
    </div>

    <div class="form-control">
      <label for="cpassword">Confirm Password</label>
      <input type="password" name="cpassword" id="cpassword">
      <small>Error Message</small>
    </div>

    <button type="submit">Submit</button>
  </form>
</div>
    </body>
</html>
