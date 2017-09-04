package org.waxing.dao;

public class DepartmentDAO {
	private DepartmentDAO() {}
	private static DepartmentDAO instance=new DepartmentDAO();
	public static DepartmentDAO getInstance() {
		return instance;
	}
	
}
