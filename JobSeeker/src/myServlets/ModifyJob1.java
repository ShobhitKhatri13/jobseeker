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
import myentities.*;
import org.hibernate.query.Query;
/**
 * Servlet implementation class ModifyJob1
 */
@WebServlet("/ModifyJob1")
public class ModifyJob1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyJob1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		int jobid,salary;
		String cmpnm,location ,skill;
		try
		{
			
			jobid=Integer.parseInt(request.getParameter("jobid"));
			cmpnm=request.getParameter("cmpnm");
			location=request.getParameter("location");
			skill=request.getParameter("skill");
			salary=Integer.parseInt(request.getParameter("salary"));
			
			Session ses;
			Configuration cfg=new Configuration().configure();
			SessionFactory sf=cfg.addAnnotatedClass(Newjob.class).buildSessionFactory();
			ses=sf.getCurrentSession();
			ses.beginTransaction();
			
			
		
			String	q=("update Newjob set cmpnm=:cmpnm , location=:location , skill=:skill , salary=:salary   where jobid=:jobid");
			
			
			Query qr=ses.createQuery(q);
			qr.setParameter("cmpnm", cmpnm);
			qr.setParameter("location", location);
			qr.setParameter("skill", skill);
			qr.setParameter("salary", salary);
			qr.setParameter("jobid", jobid);
			int res=qr.executeUpdate();
			ses.getTransaction().commit();
			ses.close();
			if(res>0)
			{
			response.sendRedirect("Done.jsp");

			}
			else
			{
				out.println("<h2>Transaction failed</h2>");

			}

			
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
	}

}
