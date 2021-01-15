package com.example.domain;

public class BusTradeVO {
	private int seq_board;
	private String send_user_id, receive_user_id, send_ticket, receive_ticket;

	public int getSeq_board() {
		return seq_board;
	}

	public void setSeq_board(int seq_board) {
		this.seq_board = seq_board;
	}

	public String getSend_user_id() {
		return send_user_id;
	}

	public void setSend_user_id(String send_user_id) {
		this.send_user_id = send_user_id;
	}

	public String getReceive_user_id() {
		return receive_user_id;
	}

	public void setReceive_user_id(String receive_user_id) {
		this.receive_user_id = receive_user_id;
	}

	public String getSend_ticket() {
		return send_ticket;
	}

	public void setSend_ticket(String send_ticket) {
		this.send_ticket = send_ticket;
	}

	public String getReceive_ticket() {
		return receive_ticket;
	}

	public void setReceive_ticket(String receive_ticket) {
		this.receive_ticket = receive_ticket;
	}

	@Override
	public String toString() {
		return "BusTradeVO [seq_board=" + seq_board + ", send_user_id=" + send_user_id + ", receive_user_id="
				+ receive_user_id + ", send_ticket=" + send_ticket + ", receive_ticket=" + receive_ticket + "]";
	}

}
