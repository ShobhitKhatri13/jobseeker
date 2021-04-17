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
	Newjob obj=(Newjob) lst.get(0);
	out.println("<center><table><tr><td><h2>1) JobID:- </h2></td><td><h2>"+obj.getJobid()+"</h2></td></tr>");
	out.println("<tr><td><h2>2) Company Name:- </h2></td><td><h2>"+obj.getCmpnm()+"</h2></td></tr>");
	out.println("<tr><td><h2>3) Location:- </h2></td><td><h2>"+obj.getLocation()+"</h2></td></tr>");
	out.println("<tr><td><h2>4) Skill:- </h2></td><td><h2>"+obj.getSkill()+"</h2></td></tr>");
	out.println("<tr><td><h2>5) Salary:- <h2></td><td><h2>"+obj.getPack()+"</h2></td></tr></table></center>");
	
	
}
else
{
	out.println("<br><br><h2><center>Account Doesnot Exist</center></h2><br>");
}


%>
<center><a href="Candidate.jsp"><input type="button" value="Home"></a></center>
</body>

</html>