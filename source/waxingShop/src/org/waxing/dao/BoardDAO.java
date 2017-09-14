package org.waxing.dao;
import static org.waxing.db.JdbcUtils.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.waxing.bean.Board;
public class BoardDAO {
	private BoardDAO() {}
	private static BoardDAO instance=new BoardDAO();
	public static BoardDAO getInstance() {
		return instance;
	}
	public ArrayList<Board> getAllBoard(){
		String sql="select * from board order by board_num desc";
		ArrayList<Board> list = new ArrayList<Board>();
		Connection conn = null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Board temp=new Board();
				temp.setBoard_num(Integer.parseInt(rs.getString("board_num")));
				temp.setUserid(rs.getString("board_userid"));
				temp.setKinds(rs.getString("board_kinds"));
				temp.setTitle(rs.getString("board_title"));
				temp.setContent(rs.getString("board_content"));
				temp.setFileName(rs.getString("board_filename"));
				temp.setWritedate(rs.getTimestamp("board_writedate"));
				list.add(temp);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(rs!=null)close(rs);
			if(pstmt!=null)close(pstmt);
			if(conn!=null)close(conn);
		}
		return list;
	}
	
	public Board getOneBoard(int board_num) {
		String sql="select * from board where board_num=?";
		Board oneBoard=null;
		Connection conn = null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, board_num);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				oneBoard=new Board();
				oneBoard.setBoard_num(Integer.parseInt(rs.getString("board_num")));
				oneBoard.setUserid(rs.getString("board_userid"));
				oneBoard.setKinds(rs.getString("board_kinds"));
				oneBoard.setTitle(rs.getString("board_title"));
				oneBoard.setContent(rs.getString("board_content"));
				oneBoard.setFileName(rs.getString("board_filename"));
				oneBoard.setWritedate(rs.getTimestamp("board_writedate"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(rs!=null)close(rs);
			if(pstmt!=null)close(pstmt);
			if(conn!=null)close(conn);
		}
		return oneBoard;
	}
	
	public void insertBoard(Board temp) {
		String sql="insert into board values(board_num_seq.NEXTVAL,?,?,?,?,?,sysdate)";
		Connection conn = null;
		PreparedStatement pstmt=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, temp.getUserid());
			pstmt.setString(2, temp.getKinds());
			pstmt.setString(3, temp.getTitle());
			pstmt.setString(4, temp.getContent());
			pstmt.setString(5, temp.getFileName());
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(pstmt!=null)close(pstmt);
			if(conn!=null)close(conn);
		}
	}
	
	public void modifyBoard(Board temp) {
		String sql="update board set title=? content=? where board_num=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, temp.getTitle());
			pstmt.setString(2, temp.getContent());
			pstmt.setInt(3, temp.getBoard_num());
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(pstmt!=null)close(pstmt);
			if(conn!=null)close(conn);
		}
	}
	public void deleteBoard(int board_num) {
		String sql="delete from board where board_num=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, board_num);
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(pstmt!=null)close(pstmt);
			if(conn!=null)close(conn);
		}
	}
	
}
