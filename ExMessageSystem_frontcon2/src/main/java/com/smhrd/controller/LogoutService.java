package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.frontcontroller.Command;

public class LogoutService implements Command {

   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response) {
      // Servelet에서 세션 객체 가져오기
      HttpSession session = request.getSession();

      // 세션 반납
      session.invalidate();
      
      // 이동은 FrontController에서 진행

      return "redirect:/Gomain.do";
   }

}