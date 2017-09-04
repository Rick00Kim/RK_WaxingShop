package org.waxing.bean;

import java.util.Date;

public class Reserve {
	private int reserve_num;
	private String client;
	private int participant;
	private int reserve_price;
	private int reserve_content;
	private Date reserve_date;
	private String reserve_check;
	private Staff staff;
	private Member member;
	private Surgery surgery;
	
	
	public int getReserve_num() {
		return reserve_num;
	}
	public void setReserve_num(int reserve_num) {
		this.reserve_num = reserve_num;
	}
	public String getClient() {
		return client;
	}
	public void setClient(String client) {
		this.client = client;
	}
	public int getParticipant() {
		return participant;
	}
	public void setParticipant(int participant) {
		this.participant = participant;
	}
	public int getReserve_price() {
		return reserve_price;
	}
	public void setReserve_price(int reserve_price) {
		this.reserve_price = reserve_price;
	}
	public int getReserve_content() {
		return reserve_content;
	}
	public void setReserve_content(int reserve_content) {
		this.reserve_content = reserve_content;
	}
	public Date getReserve_date() {
		return reserve_date;
	}
	public void setReserve_date(Date reserve_date) {
		this.reserve_date = reserve_date;
	}
	public String getReserve_check() {
		return reserve_check;
	}
	public void setReserve_check(String reserve_check) {
		this.reserve_check = reserve_check;
	}
	public Staff getStaff() {
		return staff;
	}
	public void setStaff(Staff staff) {
		this.staff = staff;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public Surgery getSurgery() {
		return surgery;
	}
	public void setSurgery(Surgery surgery) {
		this.surgery = surgery;
	}
	
}
