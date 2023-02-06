<%-- 
    Document   : APPFORM
    Created on : Feb 2, 2023, 11:43:14 PM
    Author     : noorbabahr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title style="color: brown">Login 12</title>
        <meta name="author" content="Zaur">
        <meta descryption content="Presentation of website">
        <meta name="keywords" content="technology, cyber security, software">
        <meta http-equiv="refresh" content="100">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <link rel="stylesheet" href="login12.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
		<link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
		<link href="https://fonts.googleapis.com/css2 family=Poppins:wght@200;300;400;500;600;700&display=swap" rel="stylesheet"/>
       <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"/>
		<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    </head>
    <style>
       /* ====================================================================== */ 

 /*                      NOT RELATED TO THE TUTORIAL                        */

/* ======================================================================== */

*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	text-decoration: none;
	outline: none;
	list-style: none;
}


*,
*::before,
*::after {
    margin: 0;
	padding: 0;
	box-sizing: border-box;
	text-decoration: none;
	outline: none;
	list-style: none;
}


:root {
  --step--2: clamp(0.69rem, calc(0.58rem + 0.60vw), 1.00rem);
  --step--1: clamp(0.83rem, calc(0.67rem + 0.81vw), 1.25rem);
  --step-0: clamp(1.00rem, calc(0.78rem + 1.10vw), 1.56rem);
  --step-1: clamp(1.20rem, calc(0.91rem + 1.47vw), 1.95rem);
  --step-2: clamp(1.44rem, calc(1.05rem + 1.95vw), 2.44rem);
  --step-3: clamp(1.73rem, calc(1.21rem + 2.58vw), 3.05rem);
  --step-4: clamp(2.07rem, calc(1.39rem + 3.40vw), 3.82rem);
  --step-5: clamp(2.49rem, calc(1.60rem + 4.45vw), 4.77rem);
	
	/* Font style */
	
	--ff-primary: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
	
	/* Color style */
	
	--color-primary: #0575E6;
	--color-secondary: #6dd5ed;
	--color-primary-light:#8dc6ff;
	--color-primary-dark:#021B79;
	--color-error:#cc3333;
	--color-success:#4bb544;
	--color-link:#606470;
	--color-text:#5f6769;
	--color-header-dark:#393e46;
	--color-background:#f5f9ee;
	--color-border-sc:#ececec;
	--color-border-focus:#69c2ff;
	--color-border:#d3d6db;
	--bs:#ffa857;
	--color-button:#f8e7e7;
	--color-percentage:#5f6769;
	--color-header-light:#9ba6a5;
	--color-border-focus:#a9d7f6;
	--color-input-background:#f5f9ee;
	--gradient: linear-gradient(135deg var(--color-primary), var(--color-secondary));
	
	
}

/* Remove default margin */
body,
h1,
h2,
h3,
h4,
p,
figure,
blockquote,
dl,
dd {
  margin: 0;
}

/* Remove list styles on ul, ol elements with a list role, which suggests default styling will be removed */

ul[role='list'],
ol[role='list'] {
  list-style: none;
}


/* Set core root defaults */
html:focus-within {
  scroll-behavior: smooth;
}

/* Set core body defaults */
body {
  min-height:  100vh;
  text-rendering: optimizeSpeed;
  line-height: 1.5;
  font-family: var(--ff-primary);
}

/* A elements that don't have a class get default styles */
a:not([class]) {
 text-decoration-skip-ink: auto;
}

/* Make images easier to work with */
img,
picture {
  max-width: 100%;
  display: block;
}

/* Inherit fonts for inputs and buttons */
input,
button,
textarea,
select {
  font: inherit;
}

/* Remove all animations, transitions and smooth scroll for people that prefer not to see them */
@media (prefers-reduced-motion: reduce) {
  html:focus-within {
   scroll-behavior: auto;
  }
  
  *,
  *::before,
  *::after {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
    scroll-behavior: auto !important;
  }
}

html, body {
	height: 100%;
}



/* ======================================================================== */ 

 /*                      RELATED TO THE TTUTORIAL                        */

/* ======================================================================== */




body {
	display: grid;
	place-items: center;
	background: #3284ce;
	margin: 0;
	padding: 0 1.5rem;
}

:is(input, button) {
	width: 100%;
	height: 60px;
	background: transparent;
	font-family: inherit;
	font-size: var(--step--1);
	border: 0;
	outline: 0;
}

.clouds {
	position: fixed;
	top: 30%;
	left: 0;
	width: 3000px;
	height: 1500px;
	transform: translate(0, -50%);
	animation: clouds 15s infinite alternate linear;
}

@keyframes clouds {
	100% {
		transform: translate(-50vw, -55%);
		transform: scale(1, 1.1);
	}
}

.signup-form {
	position: fixed;
	top: 0;
	left: 0;
	width: min(70%, 460px);
	height: 100%;
	background: #111820;
	padding: 6.8rem 5.2rem;
}

.signup-form header > h2 {
	color: rgb(255 255 255 / 96%);
	font-size: var(--step-1);
	font-weight: 600;
	margin: 0 0 .8rem;
}

.signup-form header > h3 {
	color: rgb(255 255 255 / 40%);
	font-size: var(--step--2);
	font-weight: 400;
	margin: 0 0 1.9rem;
}

.signup-form form > h4 {
	color: rgb(255 255 255 / 40%);
	font-weight: 300;
	
	margin: -.5rem 0 .6rem 0;
}

form {
	display: grid;
	grid-gap: .9rem;
	margin: 0;
}

.input-group {
	position: relative;
}

.input-group:not(:last-of-type) {
	margin-bottom: 1rem;
}

.input-group input {
	height: 72px;
	color: rgb(255 255 255 / 96%);
	border-bottom: 2px solid #2b3442;
	padding: 0 1.8rem 0 2.2rem;
}

.input-group input:focus {
	border-bottom-color: #216ce7; 
	transition: .2s;
}

.input-group label {
	position: absolute;
	top: 50%;
	left: 36px;
	transform: translate(0, -50%);
	color: rgb(255 255 255 / 40%);
	pointer-events: none;
	transition: .4s;
}

:is(input:focus, input:valid) ~ label {
	transform: translate(-40px, -40px);
	scale: .875;
}

input:focus ~ label {
	color: #216ce7;
}

.input-group img {
	position: absolute;
	top: 50%;
	left: 0;
	transform: translate(0, -50%);
	width: 20px;
	height: 20px;
	font-size: var(--step--1);
	color: rgb(255 255 255 / 40%);
	pointer-events: none;
}

:is(input:focus, input:valid) ~ img {
	color: rgb(0 0 0 / 96%);
}

.form button {
	display: flex;
	align-items: center;
	justify-content: space-between;
	color: #f9f9f9;
	background: #216ce7;
	font-family: inherit;
	font-weight: 400;
	border-radius: .4rem;
	padding: 0 2.1rem;
	cursor: pointer;
}

.form button i {
	color: rgb(255 255 255 / 96%);
}

.signup-form p {
	color: #778395;
	margin-bottom: 1rem;
}

.signup-form p > a {
	color: #216ce7;
	padding-left: .5rem;
}


.copy {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-30%, -50%);
	font-size: var(--step-0);
	font-weight: 200;
}

.copy p {
	color: #2b3442;
}

.copy a {
	color: #111820;
	font-size: var(--step--1);
}

    </style>
    <body>
		<img class="clouds" src="images/Sea%20of%20Clouds-10s-1536px.svg">
		<div class="signup-form">
			<header class="signup-header">
				<h2>Book Appointment</h2>
                        <p>
				Reschdual the appointment? <a href="#">Login here</a>
			</p>
                        <p>
				Cancel the appointment? <a href="#">Login here</a>
			</p>
				<h3>fill the form please</h3>
			</header>
			<form action="APP.jsp" class="form">
				<div class="input-group">
					<input type="text" name="UserName" required>
					<label>User Name</label>
					<img src="images/icon-accounts.svg">
				</div>
				<div class="input-group">
					<input type="text" name="Date" placeholder="               dd/mm/yyyy"required>
					<label>Date</label>
					<img src="images/icon-folders.svg">
				</div>
                                <div class="input-group">
					<input type="text" name="Time" placeholder="                    00:00" required>
					<label>Time</label>
					<img src="images/icon-folders.svg">
				</div>
				<div class="input-group">
					<input type="text" name="VaccineType" required>
					<label>Vaccine Type</label>
					<img src="images/icon-lock.svg">
				</div>
				<h4>At least 8 character</h4>
                                       
                                
                      <%--  <input type="submit" value="BOOK" name="Add" class="btn1">   --%>
                        
                        <button type="submit">
				BOOK
				<i class="fa-sharp fa-solid fa-arrow-right"></i>
			</button>
                        
			</form>
		</div>
		<div class="copy">

		</div>
    </body>
</html>