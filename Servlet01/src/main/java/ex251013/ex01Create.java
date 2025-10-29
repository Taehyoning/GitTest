package ex251013;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//1. url mapping 값 : @WebSerclet("url값")
// > url값으로 요청이 들어왔을 때 , 어떤 파일과 연결할 건지 설정
@WebServlet("/Create")
//2. HttpServlet을 상속받아야만, tomcat 안쪽에 존재하는 Web Container에서
//해당하는 파일을 자동으로 생성하고, 실행, 소멸 등을 관리한다
public class ex01Create extends HttpServlet {
	//3. 직렬화와 역직렬화라는 과정을 거쳤을 때, 해당하는 자바 파일이 "Sservelt" 파일임을
	//   알려주는 일종의 고유 uid 값 (해당하는 코드가 없어도 작동하긴 함)
	private static final long serialVersionUID = 1L;
       
	//4. 생성자 : 객체가 생성되는 순간에 자동으로 호출
    public ex01Create() {
        super(); // 부모의 생성자를 호출 
        System.out.println("생성자 호출");
        // TODO Auto-generated constructor stub
    }
    // 5. init 메소드 : Servlet 초기화시키는 메소드
    //-> Servlet을 실행하기 전 , 기본적으로 세팅해야하는 값이 있을때만 오버라이딩!
    //   그렇지 않다면 , 그냥 기본적으로 부모가 가지고 있는 메소드 사용하기
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 호출");
	}
	// 6. destroy 메소드 : Servlet 소멸시키는 메소드
	// > 서버가 종료되어서 , 더이상 을 Servlet 사용하지 않을 때 호출
	public void destroy() {
		System.out.println("destory 호출");
	}

	//7. service 메소드 : Client의 요청이 들어왔을 때 , 실행되는 메소드 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("service 호출");
	}

	// Servlet 생명주기(Life Cycle)
	// 생성자 -> init -> service (요청이 들어올 때마다) -> destroy
	// * tomcat 안에 있는 Web Container가 관리한다.
	
	
	
}
