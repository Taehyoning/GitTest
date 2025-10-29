<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h4>랜덤당첨결과</h4>
   
   <%
      request.setCharacterEncoding("UTF-8");
      String temp = request.getParameter("subject");
      String[] item = request.getParameterValues("item");
      Random rd = new Random();
      int num= rd.nextInt((item.length));
      
      
   %>
   <%%>
      <h4><%=temp %></h4>
      <h4><%=item[num] %></h4>
   
</body>
</html>