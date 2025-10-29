<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- JSP 구성요소용 주석
         (1) 스크립트릿 : <% Java 코드를 작성할 때 사용%>
         (2) 표현식 : <%=변수명 or 객체메소드 호출 or 연산식%>
            -> Java코드 안에 있는 데이터를 HTML 문서내에 출력하고 싶을 때 사용
            -> 절대절대 안쪽에 세미콜론 사용금지!
   --%>
   
   <!-- HTML문서용 주석 -->
   
   <%
   // Java코드를 작성하는 영역
   String name = "김태현";
   if(name.equals("김태현")){ %>
      <h1>김태현님 환영합니다.</h1>
   <%}%>

	<h2> <%=name %>   </h2>
	<h3> <%=4+7 %> </h3>
	<h4> <%=Math.abs(-3.14) %></h4>


</body>
</html>