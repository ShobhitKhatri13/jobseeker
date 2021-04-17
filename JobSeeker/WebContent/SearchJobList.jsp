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

</head>
<body>

<div class="forgot" align="center">

<h2 style="color:white" align="center"><center>You Can Search Job On Your Skills</center></h2><br>
<%
			String email=String.valueOf(session.getAttribute("email"));
			%>
			<h3 align="center" style="color:white">EmailId Is:-<%=email %></h3><br>
			<br>
<form name="frm" method="post" action="SearchJobList1.jsp">
<table>
<tr>
<td style="color:white"><h3>Choose Your Skills</h3></td>
<td><select name="skill">
<option value="java">Java</option>
<option value="python">Python</option>
<option value="bigdata">Big Data</option>
<option value="bigdata">Data Analytics</option>
<option value="digitalmarketing">Digital Marketing</option>
<option value="Script">Script Writing</option>
<option value="android">Android</option>
<option value="fullstack">Full Stack</option>
<option value="gaming">Gaming</option>
<option value="managment">Mamagment</option>
<option value="commerce">Commerce</option>


</select>
</td>
</table>
<br>
<br>
<center><input type="submit" value="submit"></center>
<center><a href="Candidate.jsp">Home</a></center>
</form>

</div>
</body>
</html>