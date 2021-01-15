package com.example.domain;

public class BoardVO {
	private int seq_board, rn, type, driver_type;
	private String user_id, title, content, image, trade, driver_code, write_date;

	public String getWrite_date() {
		return write_date;
	}

	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}

	public String getDriver_code() {
		return driver_code;
	}

	public void setDriver_code(String driver_code) {
		this.driver_code = driver_code;
	}

	public int getDriver_type() {
		return driver_type;
	}

	public void setDriver_type(int driver_type) {
		this.driver_type = driver_type;
	}

	public int getRn() {
		return rn;
	}

	public void setRn(int rn) {
		this.rn = rn;
	}

	public int getSeq_board() {
		return seq_board;
	}

	public void setSeq_board(int seq_board) {
		this.seq_board = seq_board;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
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

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getTrade() {
		return trade;
	}

	public void setTrade(String trade) {
		this.trade = trade;
	}

	@Override
	public String toString() {
		return "BoardVO [seq_board=" + seq_board + ", rn=" + rn + ", type=" + type + ", driver_type=" + driver_type
				+ ", user_id=" + user_id + ", title=" + title + ", content=" + content + ", image=" + image + ", trade="
				+ trade + ", driver_code=" + driver_code + ", write_date=" + write_date + "]";
	}

}