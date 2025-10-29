<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach begin="1" end="10" step="3" var="i">
		<!-- 
      var : 반복시 사용할 변수지정
      begin : 반복의 시작점
      end : 반복의 종료지점
      step : 반복의 증가값
    -->
      ${i}번째<br>
	</c:forEach>

	<!-- 위 처럼 간단한 숫자의 범위에서 forEach를 쓸 수도 있지만,
       여러개의 데이터를 한번에 관리하는 객체 타입에서도 쓸수 있다!
       → 배열, ArrayList 등등에서 사용!
   -->

	<%
	String[] arr = { "곱창전골", "순두부찌개", "설렁탕" };

	request.setAttribute("food", arr);
	%>
	<!--  
		items 
		varStatus:
		=> index :
		=> count : 
	-->
	
	<c:forEach var="f" items="${food}" varStatus="status">
      ${status.count + 1 } / ${f}<br>
	</c:forEach>




</body>
</body>
</html>