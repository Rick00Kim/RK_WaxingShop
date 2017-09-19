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
import org.waxing.bean.Reply;
import org.waxing.dao.BoardDAO;
import org.waxing.dao.ReplyDAO;

@WebServlet("/detailReview.do")
public class DetailReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		int board_num=Integer.parseInt(req.getParameter("num"));
		
		BoardDAO mdao=BoardDAO.getInstance();
		Board getBoard=mdao.getOneBoard(board_num);
		
		ReplyDAO rdao=ReplyDAO.getInstance();
		ArrayList<Reply> reply=rdao.getAllReply(board_num);
		
		req.setAttribute("board", getBoard);
		req.setAttribute("reply", reply);
		
		RequestDispatcher rdp=req.getRequestDispatcher("waxing/review/viewDetailReview.jsp");
		rdp.forward(req, resp);
	}
	
	
	
	
}
