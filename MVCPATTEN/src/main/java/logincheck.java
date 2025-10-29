

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/logincheck")
public class logincheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		HttpSession session = request.getSession();
		
	 	  String id = request.getParameter("id"); 
	  	  String pw = request.getParameter("pw"); 
	   
	   if(id.equals("test") && pw.equals("12345")){
		   session.setAttribute("nick","태협지");
	      response.sendRedirect("success.jsp");
	   }else{
	      response.sendRedirect("logout");
	   }
		
	}

}
