<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>세션 삭제 페이지</h1>
   
   
   <%
	// session은 삭제를 위한 메서드가 존재한다!
	/* session.removeAttribute("name");
	session.removeAttribute("age"); */

	// session을 한 번에 지우는 방법!
	// session을 사용할 수 있는 영역을 통으로 닫아서 삭제하는 기능!
	session.invalidate();
   %>
   <a href="ex04GetSession.jsp">세션확인</a>
</body>
</html>