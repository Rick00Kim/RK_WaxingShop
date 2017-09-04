package org.waxing.dao;
import static org.waxing.db.JdbcUtils.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.waxing.bean.Board;
public class BoardDAO {
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
				temp.setUserid(rs.getString("userid"));
				temp.setTitle(rs.getString("title"));
				temp.setWriter(rs.getString("writer"));
				temp.setContent(rs.getString("content"));
				temp.setWriteday(rs.getDate("writeday"));
				
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
}
