package org.waxing.dao;

import static org.waxing.db.JdbcUtils.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.waxing.bean.Board;
import org.waxing.bean.Surgery;
public class SurgeryDAO {
	private SurgeryDAO() {}
	private static SurgeryDAO instance = new SurgeryDAO();
	public static SurgeryDAO getInstance() {
		return instance;
	}
	public ArrayList<Surgery> getList(String kinds){
		String sql="select * from surgery where surgery_kinds=?";
		ArrayList<Surgery> list=new ArrayList<Surgery>();
		Connection conn = null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, kinds);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Surgery temp=new Surgery();
				temp.setSur_num(rs.getInt("surgery_num"));
				temp.setName(rs.getString("surgery_name"));
				temp.setSur_content(rs.getString("surgery_content"));
				temp.setPrice(rs.getInt("surgery_price"));
				temp.setKinds(kinds);
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
}
