<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%--
      JSP 구성요소
         (4) 지시자 : <%@%>
            -> JSP 파일이 .Java 변환되는 과정에서 필요한 정보를 기술하기 위해 사용
         - page 지시자 : JSP 전체적인 환경설정을 할 때 사용
         - taglib 지시자 : 태그용 라이브러리 사용하고 싶을 때	
         - include 지시자 : 다른 page를 포함하고 싶을 때 사용
         --%>
         
         <%
         //ArrayList<String> 선언해보자
         ArrayList<String> list = new ArrayList<>();
        
         %>




</body>
</html>