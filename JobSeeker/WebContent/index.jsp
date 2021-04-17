<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Place your kit's code here -->
    <script src="https://kit.fontawesome.com/a9695049d3.js" crossorigin="anonymous"></script>
    <title> Login to Job-Seeker </title>
    <link rel="stylesheet" href="index.css">
</head>
<body>
    <div class="container">
     <h1> Login to Job-Seeker.... </h1>
     <form name="frm"method="Post" action="Check">
     
    
     <div class="box">
       <i class="fa fa-envelope"></i>
       <input type="text" name="email" id="email" placeholder="Enter Your EmailID" required>
      </div>
      <div class="box">
        <i class="fa fa-unlock-alt"></i>
        <input type="password" name="password" id="password" placeholder="Enter your Password" required>
     </div>
     <div class="btn">
       <input type="Submit" value="Sign In">
       <br>
       <br>
       <i class="fa fa-circle"></i>
       New Registration ?<a href="NewRegestration.jsp">Sign Up!</a><br><br>
       <i class="fa fa-circle"></i>
       Forget Password? <a href="ForgetPassword.jsp">  Click Here! </a>
		<br>
		
     </div>
     </form>
    </div>
  
</body>
</html>