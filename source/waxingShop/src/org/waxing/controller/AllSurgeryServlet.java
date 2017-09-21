package org.waxing.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.waxing.bean.Surgery;
import org.waxing.dao.SurgeryDAO;

@WebServlet("/surgerylist.do")
public class AllSurgeryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		SurgeryDAO sdao=SurgeryDAO.getInstance();
		
		ArrayList<Surgery> manList=sdao.getList("man");
		ArrayList<Surgery> womanList=sdao.getList("woman");
		
		req.setAttribute("man", manList);
		req.setAttribute("woman", womanList);
		
		RequestDispatcher rdp=req.getRequestDispatcher("waxing/surgery/surgeryList.jsp");
		rdp.forward(req, resp);
	}
}
