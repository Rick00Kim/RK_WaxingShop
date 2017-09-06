package org.waxing.bean;

import java.sql.Timestamp;

public class Msg_admin {
	private int msg_num;
	private String writer;
	private String title;
	private String content;
	private int ref_msg;
	private Timestamp send_date;
	
	public int getMsg_num() {
		return msg_num;
	}
	public void setMsg_num(int msg_num) {
		this.msg_num = msg_num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getRef_msg() {
		return ref_msg;
	}
	public void setRef_msg(int ref_msg) {
		this.ref_msg = ref_msg;
	}
	public Timestamp getSend_date() {
		return send_date;
	}
	public void setSend_date(Timestamp send_date) {
		this.send_date = send_date;
	}
	
}
