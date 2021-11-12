<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<jsp:scriptlet>
    String name = (String) session.getAttribute("session_name");
    String email = (String) session.getAttribute("session_email");
    String mobile_no = (String) session.getAttribute("session_mobile_no");
   
    
</jsp:scriptlet>
<jsp:scriptlet>
    if (name == null || name.equals("")) {
        response.sendRedirect("login.jsp");
    }
</jsp:scriptlet>
<html>
<head>
<meta charset="ISO-8859-1">
<title>profile</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container-fluid">
		<h2>Welcome: <jsp:expression> name</jsp:expression></h2>
	</div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <span>Name:<jsp:expression> name</jsp:expression></span><br><br>
                    <span>Email: <jsp:expression> email</jsp:expression></span><br><br>
                    <span>Mobile No:<jsp:expression> mobile_no</jsp:expression></span><br><br>
                
                 
                   
                </div>
                <div class="col-md-3"></div>
            </div>
            
        </div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3">
			</div>
			<div class="col-md-3">
                            <span class="hyperlinks_design" ><a href="Logout">Logout</a></span>
                            
			</div>
			<div class="col-md-3">
                            <span class="hyperlinks_design" ><a href="updateProfile.jsp">Update</a></span>
                            </div>
			<div class="col-md-3">
				
			
				
			</div>
		</div>
	</div>
</body>
</html>