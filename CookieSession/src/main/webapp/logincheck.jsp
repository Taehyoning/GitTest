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
 	  String id = request.getParameter("id"); 
  	  String pw = request.getParameter("pw"); 
   
   if(id.equals("test") && pw.equals("12345")){
	   session.setAttribute("name","방구몬스터");
	   String name = (String)session.getAttribute("name");
      response.sendRedirect("main.jsp");
   }else{
      response.sendRedirect("loginfail.jsp");
   }
   %>





</body>
</html>