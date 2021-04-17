<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="org.hibernate.*"  %>
    <%@ page import="org.hibernate.cfg.Configuration"  %>
    <%@ page import="myentities.*"  %>
    <%@ page import="org.hibernate.query.Query"  %>
    <%@ page import="java.util.List"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script language="javascript">
function testfun()
{
alert("Job Applied Successfully! Thank You")
}
</script>
</head>
<body>

<%
int jobid;

jobid=Integer.parseInt(request.getParameter("jobid"));

Session ses;
Configuration cfg=new Configuration().configure();
SessionFactory sf=cfg.addAnnotatedClass(Newjob.class).buildSessionFactory();
ses=sf.getCurrentSession();
ses.beginTransaction();

Query q=ses.createQuery("from Newjob where jobid=:jobid");
q.setParameter("jobid", jobid);


List lst=q.getResultList();

if(lst.size()>0)
	
{	
	%><br><br><br>
	<table border="1px" align="center">
<tr>
<th>JobID
<th>Company Name
<th>Location
<th>Skill
<th>Salary
	<% 
	for(int i=0;i<lst.size();i++)
	{
	Newjob obj=(Newjob) lst.get(i);
 %>
	<tr>
	<td><%=obj.getJobid() %>
	<td><%=obj.getCmpnm() %>
	<td><%=obj.getLocation() %>
	<td><%=obj.getSkill() %>
	<td><%=obj.getPack() %>
	</tr></table>
    
<%
}
	}	

else
{
	out.println("<br><br><center><h2>Account Does not Exist</h2></center>");
}

%>

<br>
<center><input type="button" value="Apply For Job"  onclick="testfun()" ></center><br>
<center><a href="Candidate.jsp">Home</a></center>
</body>
</html>