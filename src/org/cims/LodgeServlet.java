package org.cims;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LodgeServlet
 */
@WebServlet("/lodge")
public class LodgeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LodgeServlet() {
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
		//int lcid, int rid, String ctype, String cdate, String ctime, String plocation, String landmark,String victims, String suspects, String status
		String resiid=request.getParameter("rid");
		String ctype=request.getParameter("ctype");
		String cdate=request.getParameter("cdate");
		String ctime=request.getParameter("ctime");
		String plocation=request.getParameter("sloc");
		String landmark=request.getParameter("landmark");
		String victims=request.getParameter("victimname");
		String suspects=request.getParameter("suspectname");
		String status=request.getParameter("status");
		
		int rid=Integer.parseInt(resiid);		
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.println("<html><body>");
		try {
			CimsDAO dao=new CimsDAO();
			dao.complaintRegister(rid, ctype, cdate, ctime, plocation, landmark, victims, suspects, status);
			response.sendRedirect("rlodge.jsp?status=done");			
			
			
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














