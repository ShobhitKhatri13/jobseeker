<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
    *{
	margin: 0;
	padding:0;
}

body{
	   background: url(register.jpg) no-repeat center center fixed;
	   background-size: cover;
}
.forgot{
	width: 500px;
	background: #3e3d3d;
	padding: 100px 45px;
	box-sizing: border-box;
	position: fixed;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
}
h1{
	
	text-align:centercenter;
	color: #fff;
	font-weight: normal;
	margin-bottom: 20px;
}

input{
	width: 100%;
	background:none;
	border: 1px solid #fff;
	border-radius: 3px;
	padding: 6px 15px;
    box-sizing: border-box;
	margin-bottom: 20px;
    font-size: 16px;
	color: #fff;
}

input[type="submit"]{
	background: #bac675;
	border: 0;
	cursor: pointer;
	color: #3e3d3d;
}

a{
	color: #bac675;
	font-size: 15px;
}

</style>

<title>Insert title here</title>
</head>
<body>
<div class="forgot">
<form name="frm" method="post" action="DeletJob1.jsp">
            <h1>You Can Delete Job From Here</h1>
            <%
			String email=String.valueOf(session.getAttribute("email"));
			%>
   
  			<h3 align="center" style="color:white">EmailId Is:-<%=email %></h3>
  			<br>
    		<input type="number" name="jobid" placeholder="JobID" required>
    		<input type="Submit" value="Submit">
    		<center><a href="Employee.jsp">Home</a></center>
        </form>

</div>
</body>
</html>