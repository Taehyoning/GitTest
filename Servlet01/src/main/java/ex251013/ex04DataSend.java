package ex251013;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Datasend")
public class ex04DataSend extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		
		//html 에서 servelet 으로 요청이 잘 진행됐다면
		// 출력문 출력
		System.out.println("데이터 전달 성공!");
		// 실제 넘어온 데이터를 확인해보자!
		// String 변수면 = request.getParameter(name값);
	    String result = request.getParameter("data");
	    // java에서 String to int 형변환 방법
	    // int 변수명 = Integer.parseInt(문자열)
	    System.out.println(result);
	}

}
