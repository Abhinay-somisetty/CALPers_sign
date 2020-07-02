    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
             pageEncoding="ISO-8859-1"%>
             <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta http-equiv="Cache-Control"
        Content="no-cache,no-store,must-revalidate" />
        <meta http-equiv="Pragma" Content="no-cache" />
        <meta http-equiv="Expires" Content="0" />
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/e-sign/res/css/icon.css">
        <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
        <title>Welcome</title>
        </head>
        <style>
        body {
	margin-top: 0;
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		"Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #212529;
	text-align: left;
	background-color: #fff;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
        .fa{
background-color: #008CBA;
font-size: 20px;
color: white;

}
.card{
border: 8px solid #f1f1f1;
/*padding-left : 30px;*/
margin-left:100px;
margin-top:15px;
}
.fas{
background-color: #008CBA;
font-size: 20px;
color: white;

}
.my-notify-info, .my-notify-success, .my-notify-warning, .my-notify-error {
    padding:10px;
    margin:10px 0;
 
}
.my-notify-info:before, .my-notify-success:before, .my-notify-warning:before, .my-notify-error:before {
    font-family:FontAwesome;
    font-style:normal;
    font-weight:400;
    speak:none;
    display:inline-block;
    text-decoration:inherit;
    width:1em;
    margin-right:.2em;
    text-align:center;
    font-variant:normal;
    text-transform:none;
    line-height:1em;
    margin-left:.2em;
    -webkit-font-smoothing:antialiased;
    -moz-osx-font-smoothing:grayscale
}
.my-notify-info:before {
    content:"\f05a";
}
.my-notify-success:before {
    content:'\f00c';
}
.my-notify-warning:before {
    content:'\f071';
}
.my-notify-error:before {
    content:'\f057';
}
.my-notify-info {
    color: #00529B;
    background-color: #BDE5F8;
}
.my-notify-success {
    color: #4F8A10;
    background-color: #DFF2BF;
}
.my-notify-warning {
    color: #9F6000;
    background-color: #FEEFB3;
}
.my-notify-error {
    color: #D8000C;
    background-color: #FFD2D2;
}
        </style>
        <script>
        var upsuccess=${upsuccess};
        var error = ${error};
        </script>
        <body background="/e-sign/res/img/7.jpg">
        <header> <nav class="navbar navbar-expand-md navbar-dark"
        style="background-color: #008CBA; height:70px;">
        <ul class="navbar-nav">
        <li ><a href="login.jsp" class="fa fa-home" class="nav-link"> Home  </a></li>
        </ul>

        <ul class="navbar-nav navbar-collapse justify-content-end">
		<li style="padding-left:7px;"><a href="logout" class="fas fa-power-off" class="nav-link"> Logout</a></li>
	</ul>
        </nav> </header>
        <div class="card" style="align:left;width:40%">
        <c:if test="${not empty upsuccess}">
 		<div class="my-notify-success">${upsuccess}</div>
		</c:if>
		<c:if test="${not empty error}">
 		<div class="my-notify-error">${error}</div>
		</c:if>
        <article class="card-body">
		
        
		
        <form id="welForm" modelAttribute="userDetails" action="updateProcess" method="post" >
        <caption>
        <h2>Welcome ${loginDetails.firstname}</h2>
        <h2>${error }</h2>
        
        </caption>
        <fieldset class="form-group">
        <label><b>First Name</b></label> <input type="text" value="${loginDetails.firstname}"
        class="form-control" name="firstname" required="required">
        </fieldset>

        <fieldset class="form-group">
        <label><b>Last Name</b></label> <input type="text" value="${loginDetails.lastname}"
        class="form-control" name="lastname">
        </fieldset>
        <fieldset class="form-group">
        <label><b>Email</b></label> <input type="text" value="${loginDetails.email}"
        class="form-control" name="email" minlength="5" readonly>
        </fieldset>
		
        <input type="hidden" value="${loginDetails.password}"
        class="form-control" name="password" minlength="5">
       
        <fieldset class="form-group">
        <label><b>Contact</b></label> <input type="text" value="${loginDetails.phone}"
        class="form-control" name="phone" minlength="10" maxlength="10"
        title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters">
        </fieldset>
        
        <fieldset class="form-group">
        <label><b>Address</b></label> <input type="text" value="${loginDetails.address}"
        class="form-control" name="address" minlength="5">
        </fieldset>

		<fieldset class="form-group">
        <label><b>Organization</b></label> <input type="text" value="${loginDetails.organization}"
        class="form-control" name="organization">
        </fieldset>
        
        
       <!--  <fieldset class="form-group">
        <label><b>Date of Birth</b></label> <input type="date"
        value="<c:out value='${todo.targetDate}' />" class="form-control"
        name="dob" required="required">
        </fieldset>
 		
 		
        <button type="submit" class="btn btn-success">Save</button>-->
        <button class="btn btn-success" id="update" name="update">Save</button>
        </form>
        </div>
        </div>
        </div>

        </body>
        </html>