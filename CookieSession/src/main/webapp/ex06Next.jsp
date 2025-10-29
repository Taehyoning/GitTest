<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1><%=pageContext.getAttribute("page") %></h1>
		<h1><%=request.getAttribute("request") %></h1>
		<h1><%=session.getAttribute("session") %></h1>
		<h1><%=application.getAttribute("appl") %></h1>
</body>
</html>