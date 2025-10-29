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
	   session.setAttribute("nick","태협지");
	   String name = (String)session.getAttribute("nick");
      response.sendRedirect("success.jsp");
   }else{
      response.sendRedirect("logout.java");
   }
   %>


</body>
</html>