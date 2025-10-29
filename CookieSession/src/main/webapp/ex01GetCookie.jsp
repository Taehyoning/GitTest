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
    // 1. 쿠키 안에 들어있는 데이터 꺼내오기 
      Cookie[] cookies= request.getCookies();
    // 2. 배열의 길이만큼 반복하면서, 원하는 데이터를 찾아오기
    for(Cookie c : cookies) {
       if(c.getName().equals("name")){
          out.print(c.getValue());
       }
    }
   %>





</body>
</html>