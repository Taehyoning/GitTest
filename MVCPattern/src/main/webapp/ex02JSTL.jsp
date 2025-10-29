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
	// scope 영역에 저장되는 데이터 라면 저장된 name값을 활용해
	// JSTL/EL 에 연결하여 사용할 수 있다.
      request.setAttribute("grade", 92);
   %>
   <!-- 100~90(A+) 89~80(B+) -->
   <!-- gt : 크다
   		ge : 크거나 같다
   		lt : 작다
   		le : 작거나 같다
   -->
   <c:if test="${grade ge 90}">
   		A+   
   </c:if>
 	<c:if test="${ grade ge 80 and grade le 89}">
 		<!--  -->
   		B+  
	</c:if>


</body>
</html>