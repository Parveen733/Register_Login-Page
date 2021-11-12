<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>register</title>
<!-- CSS only -->
<link	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"	rel="stylesheet">

<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css">

<script  type="text/javascript" src="js/validation.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<form method="POST" name="regform" onsubmit="return validation()" action="reg">
					<h1>User details</h1>
					<br> <br> <br> 
					<input type="text" name="name1" placeholder="Enter user name" class="textField_Design" onkeyup="val('name_error')"/><br> <span id="name_error" style="color: red"> </span><br> 
					<input type="text" name="email1" placeholder="Enter mail" class="textField_Design"  onkeyup="val('email_error')"/><br> <span id="email_error" style="color: red"> </span> <br>
					 <input type="password" name="pass1" placeholder="Enter your password" class="textField_Design" onkeyup="val('password_error')" /><br> <span id="password_error" style="color: red"> </span><br> 
					 <input type="text" name="mobile_no1" placeholder="Enter mobile no." class="textField_Design" onkeyup="val('mobile_error')" /><br><span id="mobile_error" style="color: red"> </span> <br> 
					 <input class="btn btn-primary" type="submit" value="Register"><br><br> 
					 
				</form>
                            <span class="hyperlinks_design"><a href="login.jsp">Login</a></span>
			</div>

			<div class="col-md-3"></div>

		</div>

	</div>

</body>
</html>