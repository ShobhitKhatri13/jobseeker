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


/**
 * Servlet implementation class AddNewJob1
 */
@WebServlet("/AddNewJob1")
public class AddNewJob1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewJob1() {
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
		
		String cmpnm,location,skill;
		int pack,jobid;
		try
		{
			jobid=Integer.parseInt(request.getParameter("jobid"));
			cmpnm=request.getParameter("cmpnm");
			location=request.getParameter("loc");
			skill=request.getParameter("skill");
			pack=Integer.parseInt(request.getParameter("pack"));
			
			
			Session ses;
			Configuration cfg=new Configuration().configure();
			SessionFactory sf=cfg.addAnnotatedClass(Newjob.class).buildSessionFactory();
			ses=sf.getCurrentSession();
			ses.beginTransaction();
			
			Newjob obj=new Newjob();
			obj.setJobid(jobid);
			obj.setCmpnm(cmpnm);
			obj.setLocation(location);
			obj.setSkill(skill);
			obj.setPack(pack);
			
			ses.save(obj);
			ses.getTransaction().commit();
			
			out.println("<br><br><h2>Job Added Succesfully...</h2><br>");
			out.println(" <h2>Please note your jobid for further...</h2>");
			out.println("<a href=Employee.jsp>Home</a>");
		
			
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}

		
	}


