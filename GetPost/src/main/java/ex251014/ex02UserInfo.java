package ex251014;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ex02UserInfo")
public class ex02UserInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		// 직업, 성별, 취미에 대한 데이터들을 받아오는 작업 수행!
	      
	      // post 방식은 눈에 보이지 않도록 데이터를 감춰서 전달 !
	      // => 한글 데이터가 넘어간다면 그에 대한 인코딩 작업이 필요 ! 
	      // => 요청(request)과 응답(response)에 대한 인코딩 작업
		
		
		 // 0. 요청 객체에 대한 인코딩 작업 (Post)
		 request.setCharacterEncoding("UTF-8");

		 // 1. 요청 객체로 부터 데이터 꺼내오기
		 // => 직업, 성별, 취미 (name 속성에 지정된 이름)
		 String job = request.getParameter("job");
		 String gender = request.getParameter("gender");
		 String[] hobby = request.getParameterValues("hobby");
		 
		 // 2. 데이터에 대한 처리 진행
		 System.out.println("job : " + job);
		 System.out.println("gender : " + gender);
		 
		 // 반복문을 사용ㄹ하여 배열에 담긴 여러 데이터 출력!
		 for(int i = 0; i < hobby.length; i++){
			 System.out.println("hobby : " + hobby[i]);
		 }
		 
		 // 3. 응답 객체에 대한 인코딩 작업 (Post)
		 response.setCharacterEncoding("UTF-8");
		 
		 
		 
		 // 4. 결과에 대한 내용을 화면에 출력
		response.setContentType("text/html; charset-8");
		
		PrintWriter out = response.getWriter();
		
		
		out.print("<h4>직업 : " + job + "</h4>");
		out.print("<h4>성별 : " + gender + "</h4>");
		
		for(String h : hobby) {
			out.print("<h4>취미 : " + h + "</h4>");
		}
			
		
		
		
		
	}

}
