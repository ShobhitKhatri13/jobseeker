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
</head>
<body>

<%
String skill;

skill=request.getParameter("skill");

Session ses;
Configuration cfg=new Configuration().configure();
SessionFactory sf=cfg.addAnnotatedClass(Newjob.class).buildSessionFactory();
ses=sf.getCurrentSession();
ses.beginTransaction();

Query q=ses.createQuery("from Newjob where skill=:skill");
q.setParameter("skill", skill);

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
	</tr>

<%
}
}	

else
{
	out.println("<br><br><center><h2>Account Does not Exist</h2></center>");
}


%>
</table>
<br>
<center><a href="Candidate.jsp">Home</a></center>
</body>
</html>