package org.waxing.dao;

import static org.waxing.db.JdbcUtils.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.waxing.bean.Member;

public class MemberDAO {
	private MemberDAO() {}
	private static MemberDAO instance=new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}
	public Member getOneMember(String id) {
		String sql="select * from member where id=?";
		Member oneMember=null;
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				oneMember=new Member();
				oneMember.setId(id);
				oneMember.setPwd(rs.getString("pwd"));
				oneMember.setName(rs.getString("name"));
				oneMember.setIdentify(rs.getString("identity"));
				oneMember.setBirth(rs.getDate("birth"));
				oneMember.setPrefer_doc(rs.getInt("prefer_doctor"));
				oneMember.setGrade(rs.getString("grade"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(rs!=null)close(rs);
			if(pstmt!=null)close(pstmt);
			if(conn!=null)close(conn);
		}
		return oneMember;
	}
	public int checkLogin(String id,String pwd) {
		String sql="select pwd from member where id=?";
		int chk=-1;
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString("pwd").equals(pwd)) {
					chk=1;
				}else {
					chk=0;
				}
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(rs!=null)close(rs);
			if(pstmt!=null)close(pstmt);
			if(conn!=null)close(conn);
		}
		return chk;
	}
	public boolean idCheck(String id) {
		String sql="select id from member where id=?";
		boolean chk=false;
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				chk=true;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(rs!=null)close(rs);
			if(pstmt!=null)close(pstmt);
			if(conn!=null)close(conn);
		}
		return chk;
	}
	public void registerMember(Member newMember) {
		String sql="insert into member values(?,?,?,?,?,0,'client')";
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, newMember.getId());
			pstmt.setString(2, newMember.getPwd());
			pstmt.setString(3, newMember.getName());
			pstmt.setString(4, newMember.getIdentify());
			pstmt.setDate(5,newMember.getBirth());
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(pstmt!=null)close(pstmt);
			if(conn!=null)close(conn);
		}
	}
	public void deleteMember(String id) {
		String sql="delete from member where id=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(pstmt!=null)close(pstmt);
			if(conn!=null)close(conn);
		}
	}
	public void modifyMember(Member modMember) {
		String sql="update member set ";
	}
}
