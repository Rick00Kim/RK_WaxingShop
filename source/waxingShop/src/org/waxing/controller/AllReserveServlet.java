package org.waxing.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.waxing.bean.Member;
import org.waxing.bean.Reserve;
import org.waxing.dao.ReserveDAO;

@WebServlet("/reserveList.do")
public class AllReserveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		HttpSession hs=req.getSession();
		Member loginUser=(Member)hs.getAttribute("loginUser");
		
		ReserveDAO rdao=ReserveDAO.getInstance();
		
		ArrayList<Reserve> list=rdao.getAllReservation(loginUser.getId());
		
		req.setAttribute("reserveList", list);
		
		RequestDispatcher rdp=req.getRequestDispatcher("waxing/reserve/reservationList.jsp");
		rdp.forward(req, resp);
	}
}
