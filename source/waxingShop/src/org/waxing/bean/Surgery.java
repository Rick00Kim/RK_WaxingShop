package org.waxing.bean;

public class Surgery {
	private int sur_num;
	private String name;
	private String sur_content;
	private int price;
	private String kinds;
	
	public int getSur_num() {
		return sur_num;
	}
	public void setSur_num(int sur_num) {
		this.sur_num = sur_num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSur_content() {
		return sur_content;
	}
	public void setSur_content(String sur_content) {
		this.sur_content = sur_content;
	}
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getKinds() {
		return kinds;
	}
	public void setKinds(String kinds) {
		this.kinds = kinds;
	}
}
