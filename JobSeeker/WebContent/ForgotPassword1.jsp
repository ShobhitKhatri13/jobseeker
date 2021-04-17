<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="org.hibernate.*" %>
    <%@ page import="org.hibernate.cfg.Configuration" %>
    <%@ page import="myentities.NewEmployee"  %>
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
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	
	HttpSession s=request.getSession(true);
	Session ses;
	Configuration cfg=new Configuration().configure();
	SessionFactory sf=cfg.addAnnotatedClass(NewEmployee.class).buildSessionFactory();
	ses=sf.getCurrentSession();
	ses.beginTransaction();
	
	
	Query qr=ses.createQuery("update NewEmployee set password=:password where email=:email");
	qr.setParameter("password", password);
	qr.setParameter("email",email);

	int res=qr.executeUpdate();
	if(res>0)
	{
	out.println("<br><h2>Successfully... Changed!</h2><br>");

	}
	else
	{
		out.println("<h2>Sorry! Updation failed</h2>");

	}
	ses.getTransaction().commit();
	ses.close();


	
}
catch(Exception e)
{
	System.out.println(e);
}



%>
<a href=index.jsp>Home</a>
</body>
</html>