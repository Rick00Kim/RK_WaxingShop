package org.waxing.dao;

import static org.waxing.db.JdbcUtils.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.waxing.bean.Member;
import org.waxing.bean.Reserve;
import org.waxing.bean.Staff;
import org.waxing.bean.Surgery;
public class ReserveDAO {
	private ReserveDAO() {}
	private static ReserveDAO instance=new ReserveDAO();
	public static ReserveDAO getInstance() {
		return instance;
	}
	public ArrayList<Reserve> getAllReservation(String userid){
		String sql=null;
		StringBuffer sqlTemp=new StringBuffer();
		sqlTemp.append("select * from ");
		sqlTemp.append("reserve ");
		sqlTemp.append("where client_name=?");
		sql=sqlTemp.toString();
		ArrayList<Reserve> list=new ArrayList<Reserve>();
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Reserve temp=new Reserve();
					temp.setReserve_num(rs.getInt("reserve_num"));
					temp.setClient(rs.getString("client_name"));
					temp.setParticipant(rs.getInt("participant"));
					temp.setReserve_price(rs.getInt("reserve_price"));
					temp.setReserve_content(rs.getInt("reserve_content"));
					temp.setReserve_date(rs.getDate("reserve_date"));
					temp.setReserve_check(rs.getString("reserve_check"));
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
