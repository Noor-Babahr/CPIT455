<%-- 
    Document   : appointmentFormm
    Created on : Jan 31, 2023, 8:20:31 AM
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

        body{
margin:0;
background-image:url("https://source.unsplash.com/featured/?nature");
background-repeat:no-repeat;
background-size:cover;
width:100%;
height:100%;
}
.group:after {
  content: "";
  display: block;
  clear: both;
}

.landing-page {
  width: 1000px;
  margin: 100px auto 0;  
}

.landing-page *,
.landing-page *:before,
.landing-page *:after {
	-webkit-box-sizing: border-box;
       -moz-box-sizing: border-box;
            box-sizing: border-box; 
}

.landing-page .module {
	border: 1px solid rgb(219, 219, 219);
	border-radius: 4px;
	float: left;
	padding: 2em;
	width: 48%;
}

.landing-page .module > *:last-child,
.landing-page .module > *:last-child > *:last-child,
.landing-page .module > *:last-child > *:last-child > *:last-child {
	margin: 0;
	padding: 0;
}

.landing-page .note {	
	background-color: rgb(236, 248, 236);
	border: 1px dashed;	
	border-radius: 4px;	
	color: rgb(115, 136, 96);
	font-family: georgia;	
	font-size: .9em;
	font-style: italic;
	margin: 20px auto;
	padding: 2em;
}

.form-appointment {
	padding: 2em;
	background-color: rgb(239, 252, 239);
	border-radius: 4px;
	border: 1px solid rgb(130, 228, 130);
	box-shadow: 2px 2px 4px 0px rgba(0, 0, 0, 0.1);
	font-family: 'PT Sans', Arial, sans-serif;
	margin: 20px auto;
}

.form-appointment input[type=text],
.form-appointment input[type=email],
.form-appointment input[type=tel],
.form-appointment textarea {	
	border: 1px solid rgb(153, 202, 129);
	border-radius: .2em;	
	font-family: 'PT Sans', Arial, sans-serif;
	font-size: 1.1em;
	padding: .4em 1em;
	margin: 0 0 .8em;
	width: 100%;
  box-shadow: 0 0 8px rgba(0,0,0,.08) inset;
}
#datepicker {
  border: 1px solid rgb(153, 202, 129);
	border-radius: .2em;	
	font-family: 'PT Sans', Arial, sans-serif;
	font-size: 1.1em;
	padding: .4em 1em;
	margin: 0 0 .8em;
	width: 100%;
  box-shadow: 0 0 8px rgba(0,0,0,.08) inset;
  
}

.form-appointment input[type=text],
.form-appointment input[type=email],
.form-appointment input[type=tel],
.form-appointment input[type=submit],
.form-appointment textarea {	
	-webkit-transition: all .2s ease-in-out;
	   -moz-transition: all .2s ease-in-out;
	        transition: all .2s ease-in-out;
}

.form-appointment input[type=text]:active,
.form-appointment input[type=text]:focus,
.form-appointment input[type=email]:active,
.form-appointment input[type=email]:focus,
.form-appointment input[type=tel]:active,
.form-appointment input[type=tel]:focus,
.form-appointment textarea:active,
.form-appointment textarea:focus {	
  outline: 0;
  box-shadow: 0 0 6px rgb(176, 226, 188);
}

.form-appointment textarea {
	height: 160px;
}

.form-appointment input[type=submit] {
	background-color: rgb(118, 207, 118);
	border: 1px solid rgb(134, 189, 134);
	border-radius: 4px;
	color: rgb(255, 255, 255);
	cursor: pointer;
	font-family: inherit;
	font-size: 1.4em;
	padding: 10px 18px;
}

.form-appointment input[type=submit]:hover {
	background-color: white;
	color: rgb(118, 207, 118);
}

.form-appointment .wpcf7-list-item-label {
	color: rgb(130, 178, 136);
}

span.wpcf7-list-item {
	display: block;
	margin-left: -.02em;
}



/****************************************/


.wrapperXX {
	max-width: 18rem;
	padding: 0 0.5rem;
	margin-left: auto;
	margin-right: auto;
	padding-top: 4rem;
}
label#labelxx {
	font-size: 0.75rem;
	font-weight: 400;
	display: block;
	margin-bottom: 0.5rem;
	color: #B0BEC5;
	border: 1px solid #ECEFF1;
	padding: 0.5rem 0.75rem;
	border-radius: 0.5rem;
}
input#datepickerX {
	font-family: 'Roboto', sans-serif;
	display:block;
	border: none;
	border-radius: 0.25rem;
	border: 1px solid transparent;
	line-height: 1.5rem;
	padding: 0;
	font-size: 1rem;
	color: #607D8B;
	width: 100%;
	margin-top: 0.5rem;
}
input#datepicker:focus {outline: none;}
#ui-datepicker-div {
	display: none;
	background-color: #fff;
	box-shadow: 0 0.125rem 0.5rem rgba(0,0,0,0.1);
	margin-top: 0.25rem;
	border-radius: 0.5rem;
	padding: 0.5rem;
}

.ui-datepicker-calendar thead th {
	padding: 0.25rem 0;
	text-align: center;
	font-size: 0.75rem;
	font-weight: 400;
	color: #78909C;
}
.ui-datepicker-calendar tbody td {
	width: 2.5rem;
	text-align: center;
	padding: 0;
}
.ui-datepicker-calendar tbody td a {
	display: block;
	border-radius: 0.25rem;
	line-height: 2rem;
	transition: 0.3s all;
	color: #546E7A;
	font-size: 0.875rem;
	text-decoration: none;
}
.ui-datepicker-calendar tbody td a:hover {	
	background-color: #E0F2F1;
}
.ui-datepicker-calendar tbody td a.ui-state-active {
	background-color: #009688;
	color: white;
}
.ui-datepicker-header a.ui-corner-all {
	cursor: pointer;
	position: absolute;
	top: 0;
	width: 2rem;
	height: 2rem;
	margin: 0.5rem;
	border-radius: 0.25rem;
	transition: 0.3s all;
}
.ui-datepicker-header a.ui-corner-all:hover {
	background-color: #ECEFF1;
}
.ui-datepicker-header a.ui-datepicker-prev {	
	left: 0;	
	background-repeat: no-repeat;
	background-size: 0.5rem;
	background-position: 50%;
	transform: rotate(180deg);
}
.ui-datepicker-header a.ui-datepicker-next {
	right: 0;
	
	background-repeat: no-repeat;
	background-size: 10px;
	background-position: 50%;
}
.ui-datepicker-header a>span {
	display: none;
}
.ui-datepicker-title {
	text-align: center;
	line-height: 2rem;
	margin-bottom: 0.25rem;
	font-size: 0.875rem;
	font-weight: 500;
	padding-bottom: 0.25rem;
}
.ui-datepicker-week-col {
	color: #78909C;
	font-weight: 400;
	font-size: 0.75rem;
}


/****************************************************************/

    </style>
    <body>
        <div class="landing-page">
  <div class="form-appointment">
    <div class="wpcf7" id="wpcf7-f560-p590-o1">
      <form action="appoint.jsp" method="post" class="wpcf7-form"
        novalidate="novalidate" _lpchecked="1">
        <div style="display: none;">
          <input type="hidden" name="_wpcf7" value="560">
          <input type="hidden" name="_wpcf7_version" value="3.5">
          <input type="hidden" name="_wpcf7_locale" value="">
          <input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f560-p590-o1">
          <input type="hidden" name="_wpnonce" value="dbb28877d5">
        </div>
        <div class="group">
          <h1 class="page-header" style="text-align:center;">Book an Appointment</h1>
          <div style="text-align: center; padding-top: 2em; border-top: 1px solid rgb(153, 202, 129); margin-top: 1em;">
          </div>
          <div style="width: 30%; float: left;">

            <span class="wpcf7-form-control-wrap text-680"><input type="text" name="ID" value="" size="45"
                class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true"
                placeholder="ID" required></span><br><br>

            <span class="wpcf7-form-control-wrap email-680"><input type="email" name="Email" value="" size="45"
                class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email"
                aria-required="true" placeholder="Email"></span><br><br>

            <span class="wpcf7-form-control-wrap text-680"><input type="text" name="PhoneNum" value="" size="45"
                class="wpcf7-form-control wpcf7-text wpcf7-tel wpcf7-validates-as-required wpcf7-validates-as-tel"
                aria-required="true" placeholder="PhoneNum" required></span><br><br>

                
            <div class="wpcf7-form-control-wrap tel-630">
              <label id="labelx" for="datepicker">
              <input type="text" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" id="Day"
                  autocomplete="off" placeholder="Day" required>
              </label>
            </div><br>
            <div class="wpcf7-form-control-wrap tel-630">
              <label id="labelx" for="datepicker">
                <input type="text" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" id="Month"
                  autocomplete="off" placeholder="Month" required>
              </label>
            </div><br>

            <input type="text" id="Time" placeholder="00:00" required/>

            <br><br>
            <span class="wpcf7-form-control-wrap textarea-398"><textarea name="Notes" cols="40" rows="10"
                class="wpcf7-form-control wpcf7-textarea"
                placeholder="Special notes, concerns, or requirements"></textarea></span><br>

          </div>

          <div style="width: 65%; float: right;">
            <h4 style="padding:0px; margin:0px"> Do you have special needs?</h4>
            <p><span class="wpcf7-form-control-wrap radio-98"><span class="wpcf7-form-control wpcf7-radio">
              <span class="wpcf7-list-item"><label><input type="radio" name="radio-98" value="Phone" required>&nbsp;
                <span class="wpcf7-list-item-label">Yes</span></label></span>
              <span class="wpcf7-list-item"><label><input type="radio" name="radio-98" value="Email" required>&nbsp;
                <span class="wpcf7-list-item-label">No</span></label></span></span></span></p>
                
             <h4 style="padding:0px; margin:0px"> Sex: </h4>
            <p><span class="wpcf7-form-control-wrap radio-98"><span class="wpcf7-form-control wpcf7-radio">
              <span class="wpcf7-list-item"><label><input type="radio" name="radio-98" value="Phone" required>&nbsp;
                <span class="wpcf7-list-item-label">Female</span></label></span>
              <span class="wpcf7-list-item"><label><input type="radio" name="radio-98" value="Email" required>&nbsp;
                <span class="wpcf7-list-item-label">Male</span></label></span></span></span></p>

                

                      
                      
            <h4 style="padding:0px; margin:0px">I am entitled to free NHS dental services because on the first day of treatment:</h4>
            <p><span class="wpcf7-form-control-wrap checkbox-246"><span class="wpcf7-form-control wpcf7-checkbox"><span
                    class="wpcf7-list-item"><label><input type="checkbox" name="checkbox-246[]"
                        value="Morning">&nbsp;<span class="wpcf7-list-item-label">I am under 18 years of
                        age</span></label></span><span class="wpcf7-list-item"><label><input type="checkbox"
                        name="checkbox-246[]" value="Afternoon">&nbsp;<span class="wpcf7-list-item-label">I am 18 years
                        of age and in fulltime education</span></label></span><span
                    class="wpcf7-list-item"><label><input type="checkbox" name="checkbox-246[]"
                        value="Afternoon">&nbsp;<span class="wpcf7-list-item-label">I am
                        pregnant</span></label></span><span class="wpcf7-list-item"><label><input type="checkbox"
                        name="checkbox-246[]" value="Afternoon">&nbsp;<span class="wpcf7-list-item-label">I had a baby
                        in the last 12 months</span></label></span><span class="wpcf7-list-item"><label><input
                        type="checkbox" name="checkbox-246[]" value="Afternoon">&nbsp;<span
                        class="wpcf7-list-item-label">I am currently in prison or a young offenders
                        institution</span></label></span></span></span></p>

                        
                        

 
                
                
                
    
            <h4 style="padding:0px; margin:0px">VaccineType *</h4>
            <div class="wpcf7-form-control-wrap tel-630">
              <label id="labelx" for="datepicker">
                <input type="text" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" id="VaccineType"
                  autocomplete="off" placeholder="VaccineType" required>
              </label>
            </div><br>
                </span></span></p>
                
                
                
            
          </div>
        </div>
        <div style="text-align: center; padding-top: 2em; border-top: 1px solid rgb(153, 202, 129); margin-top: 1em;">
          
          <input type="submit" value="SignUp" name="Add" class="btn1">
          </div>
        <div class="wpcf7-response-output wpcf7-display-none"></div>
      </form>
    </div>
  </div>
</div>
    </body>
</html>