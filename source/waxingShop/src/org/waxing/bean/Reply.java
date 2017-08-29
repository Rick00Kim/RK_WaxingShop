package org.waxing.bean;

import java.util.Date;

public class Reply {
	private int reply_num;
	private int ref_board_num;
	private String userid;
	private String rep_content;
	private Date replydate;
	
	public int getReply_num() {
		return reply_num;
	}
	public void setReply_num(int reply_num) {
		this.reply_num = reply_num;
	}
	public int getRef_board_num() {
		return ref_board_num;
	}
	public void setRef_board_num(int ref_board_num) {
		this.ref_board_num = ref_board_num;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getRep_content() {
		return rep_content;
	}
	public void setRep_content(String rep_content) {
		this.rep_content = rep_content;
	}
	public Date getReplydate() {
		return replydate;
	}
	public void setReplydate(Date replydate) {
		this.replydate = replydate;
	}
	
	
}
