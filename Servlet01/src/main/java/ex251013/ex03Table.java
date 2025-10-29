package ex251013;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Table")
public class ex03Table extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		// 문제) 해당하는 파일을 실행시 Table 구조 화면에 띄워보자!
		
		
	
		response.setContentType("text/html; charset=UTF-8"); //  한글 깨짐 방지
		PrintWriter out = response.getWriter();               //  HTML 출력 스트림 생성
		out.println("<table border=1>");  //  표 시작
		out.print("<tr>");                //  한 줄 시작
		for (int i = 1; i <= 6; i++) {    //  1~6까지 칸 생성
		    out.print("<td>" + i + "</td>");
		}
		out.print("</tr>");               // 줄 닫기
		out.print("</table>");            // 표 닫기
	}

}
