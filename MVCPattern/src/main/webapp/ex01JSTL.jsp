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

   <!-- *JSTL 라이브러리 사용법* 
      1. (꽁통) pom.xml 파일에 라이브러리 추가
      2. taglib을 사용하여 페이지에 지정이 필요!
      3. 접두사인 c를 통해 필요한 태그 사용하기! 

 -->
 <!-- 로그인 성공여부에 대한 기능을 JSTL로 생성  -->
 <%
    // 로그인 성공시에는 session의 영역에 id를 저장해 주겠다!!
    session.setAttribute("id", "smart");
    String login_id=(String)session.getAttribute("id");
    
 %>
 
 
 

   <!-- java의 if문과 동일한 작업을 수행하는 태그! -->
   <!-- 어떤 아이디인지 모르지만 로그인에 성공하여 id 값이 있다면 "로그 인성공"
      id에 값이 없다면 로그인 "실패"
    -->
   
	<c:if test="${empty id}">
   		 <!-- !empty : null값을 부정하는 의미, 값이 없는게 아니라면~ -->
		<p>로그인 성공</p>

		<!-- id가 smart와 동일하다면 해당 아이디 출력하기 -->
		<!-- eq : 문자가 같은지 비교하는 연산자 -->
		<c:if test="${id eq 'smart'}">
    	${id}
		</c:if>
		<c:if test="${id ne 'smart'}">
			아이디를 다시 한번 확인해주세요
		</c:if>	
	</c:if>	
	


</body>
</html>