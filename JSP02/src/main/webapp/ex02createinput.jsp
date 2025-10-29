<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   
   <%int num = Integer.parseInt(request.getParameter("random")); %>
   
   <div style="text-align: center;">
      <h4>랜덤숫자입력</h4>
      주제:<input type=text name=sub><br>
      
      <form action="ex02randomwinner.jsp">
      <%for(int i=1; i<=num; i++){%>
         아이템<%=i%><input type=text name=item<%=i%>><br>
      <%}%>
         <input type=submit value=시작>
      </form>
      </div>
</body>
</html>