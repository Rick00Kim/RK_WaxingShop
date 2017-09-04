package org.waxing.dao;

public class StaffDAO {
	private StaffDAO() {}
	private static StaffDAO instance=new StaffDAO();
	public static StaffDAO getInstance() {
		return instance;
	}
	
}
