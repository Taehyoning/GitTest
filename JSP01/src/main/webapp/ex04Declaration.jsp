<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>


	<%--
    	JSP 구성요소
    	(3) 선언문 : <%! Java코드를 작성 %>
        -> Java 변수나 메소드를 선언할 때, 사용하는 구성요소
        -> .java변수나 
        ->
	--%>	
	
	<h1><%=addNum(10, 1) %></h1>
	
	<%!
		int number = 10;
		// 숫자 2개를 더해준 값을 되돌려주는 addNum 메소드 선언 
		public int addNum(int num1, int num2){
			return num1 + num2;
	}
	%>



</html>