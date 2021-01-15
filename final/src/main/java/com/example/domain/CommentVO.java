package com.example.domain;

import java.util.Date;

public class CommentVO {
	private int seq_board;
	private String user_id, comment;
	private Date comment_date;

	@Override
	public String toString() {
		return "CommentVO [seq_board=" + seq_board + ", user_id=" + user_id + ", comment=" + comment + "]";
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

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Date getComment_date() {
		return comment_date;
	}

	public void setComment_date(Date comment_date) {
		this.comment_date = comment_date;
	}
}
