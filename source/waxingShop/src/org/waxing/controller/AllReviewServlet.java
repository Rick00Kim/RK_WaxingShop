package org.waxing.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.waxing.bean.Board;
import org.waxing.dao.BoardDAO;

@WebServlet("/reviewlist.do")
public class AllReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		BoardDAO bdao=BoardDAO.getInstance();
		ArrayList<Board> board_list=bdao.getAllBoard();
		
		req.setAttribute("board_list", board_list);
		RequestDispatcher rdp=req.getRequestDispatcher("waxing/review/reviewList.jsp");
		rdp.forward(req, resp);
	}
}
