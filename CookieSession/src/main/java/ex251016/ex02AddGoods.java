package ex251016;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddGoods")
public class ex02AddGoods extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

//      String[] products = {"아이폰","아이패드","아이맥","맥북프로","에어팟",
//                        "애플펜슬","맥","아이맥블랙","맥프로","미니맥"};

      // 1. 요청 데이터 꺼내오기
      String[] products = request.getParameterValues("product");
      // 2. 요청 데이터 길이만큼 쿠키 생성하기
      for (int i = 0; i < products.length; i++) {
         Cookie c = new Cookie("product" + i, products[i]);
         // 3. 만든 쿠키들을 response를 통해 보내주기
         response.addCookie(c);
         

         
//         response.setContentType("text/html;charset=UTF-8");
//         PrintWriter out = response.getWriter();
//         if(c.getName().equals("product")){
//         out.print(c.getValue());
            
      }
         response.sendRedirect("ex02Goods.jsp");
   }

}

