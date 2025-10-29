package ex251016;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/forward")
public class ex06forword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setAttribute("request", "request스코프2");
		
		// 페이지 이동방식
		// (1) sendRedirect 방식
		// --> 요청 2번, 응답 2번
		// response.sendRedirect("ex06Next.jsp");

		// (2) forward 방식
		// --> 요청 1번, 응답 1번
		// * url 주소값이 변하지 않는다. 
		RequestDispatcher rd = request.getRequestDispatcher("ex06Next.jsp");
		//이동하기
		rd.forward(request, response);
		
	}

}
