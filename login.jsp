<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="css/style.css">
</head>
<body> <div class="container-fluid">
    
    
	<div class="row">
		<div class="col-md-3">
		</div>
		<div class="col-md-6">
			<br><br><br><br>
                        <form  method="POST" action="login" >
			<input type="email" name="email1" placeholder="Enter Email" class="textField_Design"/><br><br>
			<input type="password" name="pass1" placeholder="Enter your password" class="textField_Design"/><br><br>
			<input type="submit" value="Login" class="btn btn-primary" /><br><br>
			
                        </form>
                        <span class="hyperlinks_design" ><a href="register.jsp">Register</a></span>
		</div>
		<div class="col-md-3">
		
		</div>
		
	</div>
	</div>
</body>
</html>