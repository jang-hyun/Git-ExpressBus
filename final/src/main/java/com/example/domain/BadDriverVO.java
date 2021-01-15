package com.example.domain;

import java.util.Date;

public class BadDriverVO {
	private String driver_code, user_id, status;
	private int type = -1, seq_board;
	private Date reportdate;

	public String getDriver_code() {
		return driver_code;
	}

	public void setDriver_code(String driver_code) {
		this.driver_code = driver_code;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getSeq_board() {
		return seq_board;
	}

	public void setSeq_board(int seq_board) {
		this.seq_board = seq_board;
	}

	public Date getReportdate() {
		return reportdate;
	}

	public void setReportdate(Date reportdate) {
		this.reportdate = reportdate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "BadDriverVO [driver_code=" + driver_code + ", user_id=" + user_id + ", status=" + status + ", type="
				+ type + ", seq_board=" + seq_board + ", reportdate=" + reportdate + "]";
	}

}
