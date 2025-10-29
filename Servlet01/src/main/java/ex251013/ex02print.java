package ex251013;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



	//Annotation(어노테이션) : URL Mapping을 위한 기능을 가진 주석!
	// => 해당 파일의 이름을 간단히 부를 수 있는 이름으로 지정하고 연결 할 수 있는 기능!
	@WebServlet("/print")
	public class ex02print extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// 앞으로는 Servlet에서 동작해야하는 모든 코드를 service 메소드 안쪽에 작성하자!
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 매개변수
		// 1.request: Client 요청에 대한 모든 정보를 가지고 있는, 객체
		// 2. response : 응답에 대한 모든 정보를 가지고 있는 객체
		// 해당하는 매개변수들은 우리가 직접 객체를 생성하는 개념이 아니라,
		// 자동으로 채워지는 형태를 가지고 있다! (매개변수로 받아오는 개념!)
		
		// Web 페이지에 Hello World를 h1태그를 사용하여 출력해보자!
		
		// 0. 한글 인코딩을 설정해주기 
		//** 반드시 도구를 꺼내오기 전에 설정 **
		response.setContentType("text/html;charset=UTF-8");
		
		// 1. Web page 출력해줄 수 있는 도구를 꺼내오기
		PrintWriter out = response.getWriter();
		
		// 2. 도구 사용해보기
		out.print("<h1>fuck you</h1>");
		out.print("<h2>");
		out.print("bye bye");
		out.print("</h2>");
	
			
		out.print("<h3>김태현</h3>");
	
		// 반복문 활용하여 화면에 출력해보자
		// 생성형 ai반을 h4태그를 활용하여 3번 반복하면서 출력 
	
		for (int i = 0; i < 3; i++) {
			out.print("<h3>ㅈㄴ졸리네</h3>");			
		}
	
	
	
	
		
	
	
	
	
	
	
	}

}
