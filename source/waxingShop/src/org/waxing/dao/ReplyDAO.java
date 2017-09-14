package org.waxing.dao;
import static org.waxing.db.JdbcUtils.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.waxing.bean.Reply;
public class ReplyDAO {
	private ReplyDAO() {}
	private static ReplyDAO instance=new ReplyDAO();
	public static ReplyDAO getInstance() {
		return instance;
	}
	public ArrayList<Reply> getAllReply(int ref_board_num){
		String sql="select * from reply where ref_board_num=?";
		ArrayList<Reply> list =new ArrayList<Reply>();
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, ref_board_num);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Reply temp=new Reply();
				temp.setReply_num(Integer.parseInt(rs.getString("reply_num")));
				temp.setRef_board_num(Integer.parseInt(rs.getString("ref_board_num")));
				temp.setUserid(rs.getString("reply_userid"));
				temp.setRep_content(rs.getString("reply_content"));
				temp.setReplydate(rs.getDate("reply_writedate"));
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
	public void insertReply(Reply temp) {
		String sql="insert into reply values(reply_num_seq.NEXTVAL,?,?,?,sysdate)";
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, temp.getRef_board_num());
			pstmt.setString(2, temp.getUserid());
			pstmt.setString(3, temp.getRep_content());
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(pstmt!=null)close(pstmt);
			if(conn!=null)close(conn);
		}
	}
	public void deleteReply(int reply_num) {
		String sql="delete from reply where reply_num=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, reply_num);
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(pstmt!=null)close(pstmt);
			if(conn!=null)close(conn);
		}
	}
	
}
