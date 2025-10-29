package ex251016;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MakeCookie")
public class ex01MakeCookie extends HttpServlet {
   private static final long serialVersionUID = 1L;

   
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      // Servlet에서 요청이 들어왔을 때, 실행될 수 있는 메소드
      // (1) service
      // : 어떤 전송방식이 들어오더라도, 실행하는 메소드
      // (2) do~~
      // : 전송방식에따라, 다른기능을 수행하고 싶을 때 사용하는 메소드
      // ex) doGet → get방식으로 요청이 들어왔을 때, 실행할 내용 기술
      
      // 1. Cookie 생성하기
      // Cookie 변수명 = new Cookie("name값" , "value값"); 
      // * name값 중복 불가능하다!
      // * <문자열 형식>의 데이터만 저장가능하다!
      
      // → 클라이언트의 상태정보를 브라우저에 저장할 수 있도록 도와주는 작은 데이터 공간
      // → name, value, expires 등 다양한 속성값을 가지고 있다.
      Cookie cookie = new Cookie("name", "data");
      
      // 2. 쿠키의 만료기한 설정해주기
      // setMaxAge(초단위)
      // * 만약에 쿠키를 삭제하고 싶다면? → MaxAge를 0으로 설정하면 된다!
      cookie.setMaxAge(3600);
      
      // 3. 브라우저로 쿠키를 보내주기
      response.addCookie(cookie);
      
      // 4. 다른 페이지로 이동
      response.sendRedirect("ex01GetCookie.jsp");
		
		
		
		
	}

}
