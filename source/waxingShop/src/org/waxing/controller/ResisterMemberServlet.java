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

@WebServlet("/resisterMember.do")
public class ResisterMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		Member temp=new Member();
			temp.setId(req.getParameter("id"));
			temp.setPwd(req.getParameter("pwd"));
			temp.setName(req.getParameter("name"));
			temp.setIdentification(req.getParameter("identify"));
			temp.setEmail(req.getParameter("email"));
			temp.setPhone(req.getParameter("phone"));
			temp.setPrefer_doc(Integer.parseInt(req.getParameter("s_prefer")));
		MemberDAO mdao=MemberDAO.getInstance();
		mdao.registerMember(temp);
		
		HttpSession hs=req.getSession();
		hs.setAttribute("loginUser", temp);
		
		RequestDispatcher rdp=req.getRequestDispatcher("waxing/main.jsp");
		rdp.forward(req, resp);
		
	}
}
