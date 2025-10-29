package com.smhrd.controller;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;

public class SelectAllService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		
        // 1. DAO 객체 생성
		 MemberDAO dao = new MemberDAO();
        // 2. DAO에서 전체 회원 목록 가져오기
        List<MemberVO> memberList = dao.selectAll();
        System.out.println("태현체크 >> " + memberList.size());
        request.setAttribute("memberList", memberList);


		return "select.jsp";
	}

}




