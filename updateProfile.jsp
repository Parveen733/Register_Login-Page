<%-- 
    Document   : updateProfile
    Created on : 9 Sep, 2021, 4:43:37 PM
    Author     : py742
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:scriptlet>
    String name = (String) session.getAttribute("session_name");
    String email = (String) session.getAttribute("session_email");
    String mobile_no = (String) session.getAttribute("session_mobile_no");
   
</jsp:scriptlet>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ProfileUpdate</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <input type="text" placeholder="Enter name" value="<jsp:expression> email</jsp:expression>" name="name1" readonly="">
        <input type="text" placeholder="Enter name" value="<jsp:expression> name</jsp:expression>" name="name1">
        <input type="text" placeholder="Enter name" value="<jsp:expression> mobile_no</jsp:expression>" name="name1">
        
        <input type="submit" value="Save" class="btn-secondary">
        <span>
             <span class="hyperlinks_design" ><a href="profile.jsp">back</a></span>
        </span>
    </body>
</html>
