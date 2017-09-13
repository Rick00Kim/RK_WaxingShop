package org.waxing.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.waxing.bean.Member;
import org.waxing.dao.MemberDAO;

@WebServlet("/login.do")
public class LoginMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		String resUrl=null;
		
		String userid=req.getParameter("userid");
		String userpwd=req.getParameter("userpwd");
		
		MemberDAO mdao=MemberDAO.getInstance();
		
		int chk=mdao.loginCheck(userid, userpwd);
		
		if(chk==1) {
			HttpSession hs=req.getSession();
			Member user=mdao.getOneMember(userid);
			hs.setAttribute("loginUser",user);
			resUrl="waxing/main.jsp";
		}else if(chk==0) {
			req.setAttribute("error", "비밀번호를 확인해 주세요");
			resUrl="waxing/member/loginForm.jsp";
		}else if(chk==-1) {
			req.setAttribute("error", "아이디가 없습니다");
			resUrl="waxing/member/loginForm.jsp";
		}
		RequestDispatcher rdp=req.getRequestDispatcher(resUrl);
		rdp.forward(req, resp);
	}
}
