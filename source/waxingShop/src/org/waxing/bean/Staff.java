package org.waxing.bean;

public class Staff {
	private int staff_num;
	private String staff_name;
	private int career;
	private String detail;
	private int depart;
	private Department department;
	
	public int getStaff_num() {
		return staff_num;
	}
	public void setStaff_num(int staff_num) {
		this.staff_num = staff_num;
	}
	public String getStaff_name() {
		return staff_name;
	}
	public void setStaff_name(String staff_name) {
		this.staff_name = staff_name;
	}
	public int getCareer() {
		return career;
	}
	public void setCareer(int career) {
		this.career = career;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public int getDepart() {
		return depart;
	}
	public void setDepart(int depart) {
		this.depart = depart;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	
}
