package myServlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;
import myentities.NewEmployee;



/**
 * Servlet implementation class AddUser
 */
@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String uname,pswd,ty,email,mobno;
		try
		{
			uname=request.getParameter("unm");
			pswd=request.getParameter("pass");
			ty=request.getParameter("uty");
			email=request.getParameter("email");
			mobno=request.getParameter("mob");
			
			Session ses;
			Configuration cfg=new Configuration().configure();
			SessionFactory sf=cfg.addAnnotatedClass(NewEmployee.class).buildSessionFactory();
			ses=sf.getCurrentSession();
			ses.beginTransaction();
			
			NewEmployee obj=new NewEmployee();
			obj.setUsernm(uname);
			obj.setPassword(pswd);
			obj.setUsertype(ty);
			obj.setEmail(email);
			obj.setMobileno(mobno);
			
			ses.save(obj);
			ses.getTransaction().commit();
			
			out.println("Account opened");
			
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}

}
