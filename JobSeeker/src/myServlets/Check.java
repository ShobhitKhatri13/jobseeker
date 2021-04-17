package myServlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class Check
 */
@WebServlet("/Check")
public class Check extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Check() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
        
		String email=request.getParameter("email");
		String pass=request.getParameter("password");
		
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobseeker?user=root&password=Pass@123");
		    
			
			pst=con.prepareStatement("select * from userinfo where  email=? and password=?;");
			pst.setString(1,email);
			pst.setString(2,pass);
			
			rs=pst.executeQuery();
			if(rs.next())
			{
				HttpSession ses=request.getSession(true);
				ses.setAttribute("email",email);
			    String ty=rs.getString("usertype");
				if(ty.equalsIgnoreCase("Employee"))
					response.sendRedirect("Employee.jsp");
				else
					response.sendRedirect("Candidate.jsp");
				
			}
			else
				response.sendRedirect("Failure.jsp");
			
			con.close();
			}
		catch(Exception e)
		{
			out.println(e);
		}
		
	}


}
