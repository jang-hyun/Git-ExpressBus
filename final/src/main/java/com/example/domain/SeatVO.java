package com.example.domain;

public class SeatVO {
	private String bus_code, seat_status;
	private int seat_num;

	public String getBus_code() {
		return bus_code;
	}

	public void setBus_code(String bus_code) {
		this.bus_code = bus_code;
	}

	public String getSeat_status() {
		return seat_status;
	}

	public void setSeat_status(String seat_status) {
		this.seat_status = seat_status;
	}

	public int getSeat_num() {
		return seat_num;
	}

	public void setSeat_num(int seat_num) {
		this.seat_num = seat_num;
	}

	@Override
	public String toString() {
		return "SeatVO [bus_code=" + bus_code + ", seat_status=" + seat_status + ", seat_num=" + seat_num + "]";
	}

}
