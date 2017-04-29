package org.cims;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ComplaintStatusServlet
 */
@WebServlet("/complaintstatus")
public class ComplaintStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComplaintStatusServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.println("<html><body>");
		HttpSession session=request.getSession(true);
		Residents r=(Residents)session.getAttribute("RESIDENTS");
		try {
			CimsDAO dao=new CimsDAO();
			ArrayList<Complaints> complist=dao.getAllComplaints(r.getRid());
			request.setAttribute("RESIDENTSCOMPLAINTS", complist);
			RequestDispatcher rd=request.getRequestDispatcher("rcomplaintstatus.jsp");
			rd.forward(request, response);
			
			/*for(Complaints c:complist){
				out.println(c.getLcid()+","+c.getCdate()+","+c.getVictims());
			}*/
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
