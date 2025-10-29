<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>Session 확인 페이지</h1>
   <%
      // session값 가져오기
      
      // String < Object
      String name = (String)session.getAttribute("name");
      //int age = (int) session.getAttribute("age");
      Integer age = (Integer)session.getAttribute("age");
		// 정수형 값을 int 타입에 담을 경우 내용이 있을 땐 문제가 없지만,
		// 삭제 이후 다시 가져오려 한다면 띄울 수 있는 값 자체가 없다!
		// ⇒ null 값도 아니고 0도 아닌 값 자체가 없다!
      	// 해결방법 ) 정수를 띄울수 있는 integer 객체를 사용하여
		// 띄울수 있는 내용이 없다면 자동적으로 null 값을 연결!
      
      
   
   %>
	이름 : <%= name %> <br>
	나이 : <%= age %> <br><br> 

	<!-- el 표기법 -->
	이름 : ${name} <br>
	나이 : ${age} <br><br>

	<a href="ex05RemoveSession.jsp">세션 삭제</a>
	
</body>
</html>