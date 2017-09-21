package org.waxing.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.waxing.bean.Reply;
import org.waxing.dao.ReplyDAO;

/**
 * Servlet implementation class AddReplyServlet
 */
@WebServlet("/addReply.do")
public class AddReplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		int board_num=Integer.parseInt(req.getParameter("ref_board_num"));
		Reply temp=new Reply();
		temp.setRef_board_num(board_num);
		temp.setUserid(req.getParameter("id"));
		temp.setRep_content(req.getParameter("content"));
		
		ReplyDAO rdao=ReplyDAO.getInstance();
		rdao.insertReply(temp);
		
		RequestDispatcher rdp=req.getRequestDispatcher("./detailReview.do?num="+board_num);
		rdp.forward(req, resp);
	}
	
}
