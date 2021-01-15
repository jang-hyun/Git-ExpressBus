package com.example.domain;

import java.util.Date;

public class ReservationVO extends ScheduleVO {
	private String platform_code, start_terminal_code, dest_terminal_code, schedule_start, user_id, reser_go, bus_code,
			start, dest, ischild;
	private int seat_num, reser_price;

	private Date reser_date;

	public String getPlatform_code() {
		return platform_code;
	}

	public void setPlatform_code(String platform_code) {
		this.platform_code = platform_code;
	}

	public String getStart_terminal_code() {
		return start_terminal_code;
	}

	public void setStart_terminal_code(String start_terminal_code) {
		this.start_terminal_code = start_terminal_code;
	}

	public String getDest_terminal_code() {
		return dest_terminal_code;
	}

	public void setDest_terminal_code(String dest_terminal_code) {
		this.dest_terminal_code = dest_terminal_code;
	}

	public String getSchedule_start() {
		return schedule_start;
	}

	public void setSchedule_start(String schedule_start) {
		this.schedule_start = schedule_start;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getReser_go() {
		return reser_go;
	}

	public void setReser_go(String reser_go) {
		this.reser_go = reser_go;
	}

	public String getBus_code() {
		return bus_code;
	}

	public void setBus_code(String bus_code) {
		this.bus_code = bus_code;
	}

	public String getIschild() {
		return ischild;
	}

	public void setIschild(String ischild) {
		this.ischild = ischild;
	}

	public int getSeat_num() {
		return seat_num;
	}

	public void setSeat_num(int seat_num) {
		this.seat_num = seat_num;
	}

	public int getReser_price() {
		return reser_price;
	}

	public void setReser_price(int reser_price) {
		this.reser_price = reser_price;
	}

	public Date getReser_date() {
		return reser_date;
	}

	public void setReser_date(Date reser_date) {
		this.reser_date = reser_date;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getDest() {
		return dest;
	}

	public void setDest(String dest) {
		this.dest = dest;
	}

	@Override
	public String toString() {
		return "ReservationVO [platform_code=" + platform_code + ", start_terminal_code=" + start_terminal_code
				+ ", dest_terminal_code=" + dest_terminal_code + ", schedule_start=" + schedule_start + ", user_id="
				+ user_id + ", reser_go=" + reser_go + ", bus_code=" + bus_code + ", start=" + start + ", dest=" + dest
				+ ", ischild=" + ischild + ", seat_num=" + seat_num + ", reser_price=" + reser_price + ", reser_date="
				+ reser_date + "]";
	}

}
