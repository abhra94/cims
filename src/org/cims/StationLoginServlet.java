package org.cims;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.DateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class StationLoginServlet
 */
@WebServlet("/plogin")
public class StationLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StationLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("pemail");
		String pass=request.getParameter("ppass");
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.println("<html><body>");
		try {
			CimsDAO dao=new CimsDAO();
			DateFormat df=DateFormat.getTimeInstance();
			Date d=new Date();
			String time=df.format(d);
			Station s=dao.stationValidate(email, pass,time);
			if(s!=null)
			{
				//out.println("<h4>Valid</h4>");
				//out.println(time);
				HttpSession session=request.getSession(true);
				session.setAttribute("STATION", s);
				response.sendRedirect("pwelcome.jsp");
			}
			else
				response.sendRedirect("policelogin.jsp");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		out.println("</body></html>");
		out.close();
	}

}



