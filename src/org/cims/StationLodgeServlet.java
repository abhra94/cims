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
 * Servlet implementation class StationLodgeServlet
 */
@WebServlet("/userlodge")
public class StationLodgeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StationLodgeServlet() {
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
		Station s=(Station)session.getAttribute("STATION");
		try {
			CimsDAO dao=new CimsDAO();
			ArrayList<ResidentsComplaints> rclist=dao.getalluserlodgecomplaint(s.getPlocation());
			int unsolved=dao.countStatus("Unsolved", s.getPlocation());
			int solved=dao.countStatus("Solved", s.getPlocation());
			
			ArrayList<Integer> statuslist=new ArrayList<>();
			statuslist.add(solved);
			statuslist.add(unsolved);
			/*for(Integer x:statuslist){
				out.println("<h4>"+x+"</h4>");
			}
			int x=statuslist.get(1);*/
			request.setAttribute("USERLODGED", rclist);
			request.setAttribute("STATUS", statuslist);
			RequestDispatcher rd=request.getRequestDispatcher("userlodge.jsp");
			rd.forward(request, response);
			//out.println("<h4>"+unsolved+"</h4>");
			//out.println("<h4>"+x+"</h4>");
			/*for(ResidentsComplaints rc:rclist){
				out.println(rc.getName()+","+rc.getLcid());
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
