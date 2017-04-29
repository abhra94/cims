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
 * Servlet implementation class ResidentRegisterServlet
 */
@WebServlet("/rregister")
public class ResidentRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResidentRegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
					
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String name,String email,String password,String gender,int age,String address,String idcard,String idnum
		
		String name=request.getParameter("rname");
		String email=request.getParameter("remail");
		String password=request.getParameter("rpass");
		String gender=request.getParameter("rgender");
		String agestring=request.getParameter("rage");
		String address=request.getParameter("raddress");
		String idcard=request.getParameter("ridentityproof");
		String idnum=request.getParameter("ridno");
		
		int age=Integer.parseInt(agestring);
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.println("<html><body>");
		try {
			CimsDAO dao=new CimsDAO();
			dao.residentRegister(name, email, password, gender, age, address, idcard, idnum);
			//out.println("<h4>Registration Done</h4>");
			response.sendRedirect("residentregister.jsp?status=success");
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
