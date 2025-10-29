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
		// JSP 내장객체 3번째 response
		// - 응답 데이터를 가지고 있는 객체
		// - 현재 실행 중인 페이지를 중단하고,
		//   다른 페이지가 대신 호출되도록 만들어 줄 수 있는 객체
	%>
	<form action = "ex03move.jsp">
    <select name = "url">
        <option>네이버</option>
        <option>다음</option>
        <option>구글</option>
    </select>
    <input type="submit" value="이동">
</form>


</body>
</html>