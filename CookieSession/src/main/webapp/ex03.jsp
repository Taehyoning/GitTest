<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>Session 생성 페이지</h1>
   
   <%
      // Session을 생성하는 작업 > java언어로 작업한다
      // Cookie 생성 -> Cookie 객체 사용
      // Session의 경우 JSP의 내장객체로 관리 되므로 session 이라는
      // 이름만 불러와 작업이 가능하다!
      
      // setAttribute(String, Object);
      // => 쿠키의 경우 데이터 값은 순수 문자만 가능했다면
      // => 세션은 모든 타입이 다 가능하다!
      session.setAttribute("name", "김태현");
      session.setAttribute("age", 26);
   %>
   <!-- session은 개발자도구로 확인이 불가능하다!
       실제 웹브라우저에 기능을 연결하여 내용을 출력해보자 -->
   <a href="ex04GetSession.jsp">세션 확인</a>
</body>
</html>