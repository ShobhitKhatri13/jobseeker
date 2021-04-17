<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	color: white;
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

</head>
<body>
<div class="forgot">
<h2 style="color:white"><center>You Can Modify Your Job Details From Here...</center></h2><br>
<%
			String email=String.valueOf(session.getAttribute("email"));
			%>
			<h3 align="center" style="color:white">EmailId Is:-<%=email %></h3><br>
			
<form name="frm" method="post" action="ModifyJob1">
<table>
<tr>
<td style="color:white">JobID: </td>
<td><input type="number" name="jobid"></td>
</tr>
<tr>
<td style="color:white">Company Name: </td>
<td><input type="text" name="cmpnm"></td>
</tr>
<tr>
<td style="color:white">Location: </td>
<td><input type="text" name="location"></td>
</tr>
<tr>
<td style="color:white">Skill: </td>
<td><input type="text" name="skill"></td>
</tr>
<tr>
<td style="color:white">Package: </td>
<td><input type="number" name="salary"></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="submit"></td>
</tr>

</table>
<center><a href="Employee.jsp">Home</a></center>
</form>
</div>
</body>
</html>