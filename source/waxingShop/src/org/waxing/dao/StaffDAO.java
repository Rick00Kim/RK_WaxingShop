package org.waxing.dao;
import static org.waxing.db.JdbcUtils.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.waxing.bean.Department;
import org.waxing.bean.Staff;
public class StaffDAO {
	private StaffDAO() {}
	private static StaffDAO instance=new StaffDAO();
	public static StaffDAO getInstance() {
		return instance;
	}
	public ArrayList<Staff> getAllStaff(){
		String sql="select * from staff, department";
		ArrayList<Staff> list=new ArrayList<Staff>();
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Staff staff=new Staff();
				staff.setStaff_num(rs.getInt("staff_num"));
				staff.setStaff_name(rs.getString("staff_name"));
				staff.setCareer(rs.getInt("career"));
				staff.setComment(rs.getString("comment"));
					Department department=new Department();
					department.setDepart_num(rs.getInt("depart_num"));
					department.setKind(rs.getString("depart_name"));
					department.setBasic_pay(rs.getInt("basic_pay"));
				staff.setDepartment(department);
				list.add(staff);
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
