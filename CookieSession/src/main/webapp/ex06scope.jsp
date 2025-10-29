<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 	

      // 1.Scope : web server에서 객체를 생성한 후에 유효할 수 있는 범위
      // (1) page : 한개의 페이지까지만 유효
      // (2) request : 요청, 응답 페이지까지만 유효
      // (3) session : 브라우저 종료전까지 유효
      // (4) application : 서버를 종료전까지 유효 

      // 공통메소드
      // 1. 값을 설정하기 : setAttribute("name값","value값")
	  // --> value 값은 Object로 설계되어 있기 때문에 , 어떤 자료형이든 집어넣을 수 있다.
	  pageContext.setAttribute("page", "page스코프");
      request.setAttribute("request", "request스코프");
      session.setAttribute("session", "seesion스코프");
      application.setAttribute("appl","application스코프");
      // 2. 값을 꺼내오기 : getAttribute("name값")

	  // 2. 값을 꺼내오기 : getAttribute("name값")
	  // --> retury type : Object, 내가 설계한 형태의 기능을 쓰고 싶다면 다운캐스
	%>
		<h1><%=pageContext.getAttribute("page") %></h1>
		<h1><%=request.getAttribute("request") %></h1>
		<h1><%=session.getAttribute("session") %></h1>
		<h1><%=application.getAttribute("appl") %></h1>
		
		<form action="ex06Next.jsp">
			<input type="submit">
		</form>
		
		
</body>
</html>