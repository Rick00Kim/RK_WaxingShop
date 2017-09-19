package org.waxing.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.waxing.dao.MemberDAO;

@WebServlet("/getPwd.do")
public class GetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		String pwd=null;
		MemberDAO mdao=MemberDAO.getInstance();
		pwd=mdao.getPwd(req.getParameter("userID"));
		
		PrintWriter out=resp.getWriter();
		out.print(pwd);
	}
}
