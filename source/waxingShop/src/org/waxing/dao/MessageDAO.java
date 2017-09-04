package org.waxing.dao;

import static org.waxing.db.JdbcUtils.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.waxing.bean.Msg_admin;
import org.waxing.bean.Msg_client;

public class MessageDAO {
	private MessageDAO() {}
	private static MessageDAO instance=new MessageDAO();
	public static MessageDAO getInstance() {
		return instance;
	}
	//Admin
	public ArrayList<Msg_client> getAllMsgForAdmin(){
		String sql="select * from msg_client";
		ArrayList<Msg_client> list=new ArrayList<Msg_client>();
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				
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
