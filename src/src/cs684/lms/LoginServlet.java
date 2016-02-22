package cs684.lms;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class loginservlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @throws IOException 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("userpass");

        try {
        	
        	UserManager usrMgr = new UserManager();
        	
        	PrintWriter out = response.getWriter();
			if(usrMgr.IsValidUser(username, password))
			{
				HttpSession session = request.getSession(false);  
				session.setAttribute("username", usrMgr.GetUserName());
				session.setAttribute("userid", usrMgr.GetUserId());
				
				response.sendRedirect("Home.jsp");
			}
			else
			{
				response.sendRedirect("Index.jsp?status=loginfailure");
			}

        }catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
