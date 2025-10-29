package ex251014;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class ex01Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		//요청 데이터 꺼내오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// 넘어온 id에 대한 결과를 콘솔에 출력하여 확인
	    // > 한글문자가 넘어올 경우에는 인코딩의 문제가 발생할 수 있다
		// > post 방식의 경우 데이터 전달시 보안처리 후 전달하기 때문에
		// > 문자에 대한 인코딩이 진행되지 않는다!
		System.out.println("id : " + id);
	     
		
		// 화면에 출력할 수 있는 도구 꺼내오기
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		// id가 smart이면서 pw12345라면 , 로그인 성공
		if(id.equals("smart") && pw.equals("12345")) {
			out.print("<h1>로그인 성공!!!!!!!!!!</h1>");
		}else {
			
			// 추가작업 > post방식으로 넘어온 데이터 웹 브라우저에 띄우기
			out.print("<h1>" + id + "</h1>");
			
			// 그렇지 않은경우 아래 문구 출력
			out.print("<h1>로그인 실패!!!!!!!!!!!!!</h1>");
		}
		
		
		
		
		// 아니라면 로그인 정보를 화깅ㄴ하세요 출력 
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
