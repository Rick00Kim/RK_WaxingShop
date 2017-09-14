package org.waxing.bean;

import java.sql.Timestamp;

public class Board {
	private int board_num;
	private String userid;
	private String kinds;
	private String title;
	private String content;
	private String fileName;
	private Timestamp writedate;
	
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getKinds() {
		return kinds;
	}
	public void setKinds(String kinds) {
		this.kinds = kinds;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getWritedate() {
		return writedate;
	}
	public void setWritedate(Timestamp writedate) {
		this.writedate = writedate;
	}
	@Override
	public String toString() {
		return "Board [board_num=" + board_num + ", userid=" + userid + ", kinds=" + kinds + ", title=" + title
				+ ", content=" + content + ", fileName=" + fileName + ", writedate=" + writedate + "]";
	}
	
}
