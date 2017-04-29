package org.cims;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CriminalRegisterServlet
 */
@WebServlet("/criminalregister")
public class CriminalRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CriminalRegisterServlet() {
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
			String name=request.getParameter("cname");
			String agestr=request.getParameter("cage");
			String gender=request.getParameter("cgender");
			String address=request.getParameter("caddress");
			String fmark=request.getParameter("cfacemark");
			
			int age=Integer.parseInt(agestr);
			
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.println("<html><body>");
			try {
				CimsDAO dao=new CimsDAO();
				dao.criminalRegister(name, age, gender, address, fmark);
				response.sendRedirect("allcriminals");
				
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
