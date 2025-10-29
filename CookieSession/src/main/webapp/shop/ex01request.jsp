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
	
	//1. 요청 객체로 부터 데이터 꺼내오기
 	request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    int java = Integer.parseInt(request.getParameter("java"));
    int web = Integer.parseInt(request.getParameter("web"));
    int iot = Integer.parseInt(request.getParameter("iot"));
    int and = Integer.parseInt(request.getParameter("and"));
 	
    
    //2. 데이터 처리 작업 (평균, 학점 구하기)
    //2-1 평균
    int avg = (java + web + iot + and ) / 4 ;
    //2-2 학점
    String grade = "";
    if (avg >= 95) grade = "A+";
    else if (avg >= 90) grade = "A";
    else if (avg >= 85) grade = "B+";
    else if (avg >= 80) grade = "B";
    else grade = "F";
    %>
    
	이름 : <%= name %> <br>
	JAVA 점수 : <%= java %> <br>
	WEB 점수 : <%= web %> <br>
	IOT 점수 : <%= iot %> <br>
	ANDROID 점수 : <%= and %> <br>
	평균 : <%= avg %> <br>
	학점 : <b><%= grade %><b>
 	<!--1. 요청 객체로 부터 데이터 꺼내오기

 	 	2. 데이터 처리 작업 (평균 학점 구하기)

 	 	3. 결과 화면에 띄우기
 	-->


</body>
</html>