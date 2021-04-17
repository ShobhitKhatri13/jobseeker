<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ page import="org.hibernate.*" %>
    <%@ page import="org.hibernate.cfg.Configuration" %>
    <%@ page import="myentities.*"  %>
    <%@ page import="java.util.List" %>
    <%@ page import="org.hibernate.query.Query" %>
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
	int jobid=Integer.parseInt(request.getParameter("jobid"));
	
	HttpSession s=request.getSession(true);
	Session ses;
	Configuration cfg=new Configuration().configure();
	SessionFactory sf=cfg.addAnnotatedClass(Newjob.class).buildSessionFactory();
	ses=sf.getCurrentSession();
	ses.beginTransaction();

	Newjob obj=new Newjob();
	obj.setJobid(jobid);
	ses.delete(obj);
	ses.getTransaction().commit();
	out.println("<h2>Job Deletd Succesfully</h2>");
	
		
}
catch(Exception e)
{
	out.println(e);
}




%>
<a href=Employee.jsp>Home</a>
</body>
</html>