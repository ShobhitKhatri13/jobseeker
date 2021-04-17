<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</script>
    
    <style>
    
       
       body{
           background: url(can.jpg) no-repeat center center fixed;
		   background-size: cover;
	       font-family: serif;
	       font-size: 22px;
       } 
       
       h1{
           text-align: center;
           color: white;
       }

		h2{
           text-align: center;
           color: white;
       }
		
       table ,th,td{
           border: 1px solid black;
           border-collapse: collapse;
           table-layout: fixed;
       }

       th,td{
           text-align: center;
           padding: 10px;
       }

       td:hover{
           background: rgba(220,20,60,.6);
       }

       th{
           background: rgba(220,20,60,.6);
       }

       tr:nth-child(odd){
           background: rgba(128,128,128,.8);
           color: white
       }

       tr:nth-child(even){
           background: rgba(0,0,0,.8);
           color: white
       }
       
       #profileDisplay{
			display: block;
			width: 10%;
			margin: 10px auto;
			border-radius: 50%;
			
		}
       
       
    </style>

<title>Insert title here</title>
</head>
<body>

    <%
	String email=String.valueOf(session.getAttribute("email"));
	%>
	<h1>Welcome To Job Sekker</h1>
	<h2>Employee Page</h2>
    <h4 align="center" style="color:white">
    EmailID :<%=email %>
	</h4>
	
	<br>
	<br>
	
<table align="center">
<tr>
<th>Sr No</th>
<th>Facilities</th>
<th>Links</th>
</tr>
<tr>
<td>1.</td>
<td>Add New Job</td>
<td><a href="AddNewJob.jsp"><input type="button" value="Add New Job"></a></td>
</tr>
<tr>
<td>2.</td>
<td>Modify Job</td>
<td><a href="ModifyJob.jsp"><input type="button" value="Modify Job"></a></td>
</tr>
<tr>
<td>3.</td>
<td>Delete Job</td>
<td><a href="DeleteJob.jsp"><input type="button" value="Delete Job"></a></td>
</tr>
<tr>
<td>4.</td>
<td>Change Password</td>
<td><a href="ChangeEmpPass.jsp"><input type="button" value="Change Password"></a></td>
</tr>
<tr>
<td>5.</td>
<td>Logout</td>
<td><a href="Logout.jsp"><input type="button" value="logout"></a></td>
</tr>
</table>
<br>
<br>
</body>
</html>