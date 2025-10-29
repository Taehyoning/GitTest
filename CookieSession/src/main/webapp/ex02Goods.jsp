<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
div {
   margin: 0px auto;
   align: center;
   text-align: center;
   color: #161616;
}

input[type="checkbox"] {
   width: 20px;
   height: 20px;
}

table {
   margin: 0px auto;
   align: center;
   text-align: center;
}

img {
   align: center;
   width: 250px;
   height: 200px;
}

#list {
   width: 200px;
   height: 400px;
   background-color: yellow;
   text-align: center;
   position: fixed;
   right: 0px;
   top: 300px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <div>
      <form action="AddGoods">
         <h1>목록</h1>
         <table border=1px>
            <tr>
               <td><img src="shop/1.jpg"></td>
               <td><img src="shop/2.jpg"></td>
               <td><img src="shop/3.png"></td>
               <td><img src="shop/4.jpg"></td>
               <td><img src="shop/5.jpg"></td>
            </tr>
            <tr>
               <td>아이폰</td>
               <td>아이패드</td>
               <td>아이맥</td>
               <td>맥북 프로</td>
               <td>에어팟</td>
            </tr>
            <tr>
               <td><input type="checkbox" name="product" value="아이폰"></td>
               <td><input type="checkbox" name="product" value="아이패드"></td>
               <td><input type="checkbox" name="product" value="아이맥"></td>
               <td><input type="checkbox" name="product" value="맥북프로"></td>
               <td><input type="checkbox" name="product" value="에어팟"></td>
            </tr>
            <tr>
               <td><img src="shop/6.jpg"></td>
               <td><img src="shop/7.jpg"></td>
               <td><img src="shop/8.jpg"></td>
               <td><img src="shop/9.jpg"></td>
               <td><img src="shop/11.jpg"></td>
            </tr>
            <tr>
               <td>애플펜슬</td>
               <td>맥</td>
               <td>아이맥블랙</td>
               <td>맥프로</td>
               <td>미니맥</td>
            </tr>
            
            <tr>
               <td><input type="checkbox" name="product" value="애플펜슬"></td>
               <td><input type="checkbox" name="product" value="맥"></td>
               <td><input type="checkbox" name="product" value="아이맥블랙"></td>
               <td><input type="checkbox" name="product" value="맥프로"></td>
               <td><input type="checkbox" name="product" value="미니맥"></td>
            </tr>
            <tr>
               <td colspan=5>
                  <input type="reset" value="초기화"> 
                  <input type="submit" value="담기">
               </td>
            </tr>
         </table>
      </form>
      <div id="list">
         <h3>장바구니 목록</h3>
  <%--       <%
        Cookie[] cookies= request.getCookies();
        
        for(Cookie c : cookies) {
            
          if(c.getName().contains("product")){
             out.print(c.getValue());%>
         <br>
         <% }
       }  %> --%>
         
         <% 		
         //저장되어 있는 cookie 값을 가져오기
		//getCookies() → cookie의 이름과 내용을 한 번에 가져온다

		Cookie[] cookies = request.getCookies();	
		for(int i = 0; i < cookies.length; i++){
		//내가 가져온 cookie 중에서 JSESSIONID에 대한 내용을 제외하고 출력하겠다
			if(!cookies[i].getName().equals("JSESSIONID"))
				out.print(cookies[i].getValue() + "<br>");
			}
         %>
         
         
      </div>


   </div>





</body>
</html>   