package org.waxing.bean;

import java.sql.Date;

public class Member {
	private String id;
	private String pwd;
	private String name;
	private String identify;
	private Date birth;
	private int prefer_doc;
	private String grade;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIdentify() {
		return identify;
	}
	public void setIdentify(String identify) {
		this.identify = identify;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public int getPrefer_doc() {
		return prefer_doc;
	}
	public void setPrefer_doc(int prefer_doc) {
		this.prefer_doc = prefer_doc;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	
}
