package com.example.domain;

public class ScheduleVO extends PlatformVO{
	private String platform_code, start_terminal_code, dest_terminal_code, schedule_start, driver_code, bus_code, dest,
			maxSeat, reser_go;
	private int bus_tier, schedule_price, reservedSeat;

	public int getReservedSeat() {
		return reservedSeat;
	}

	public void setReservedSeat(int reservedSeat) {
		this.reservedSeat = reservedSeat;
	}

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

	public String getDriver_code() {
		return driver_code;
	}

	public void setDriver_code(String driver_code) {
		this.driver_code = driver_code;
	}

	public String getBus_code() {
		return bus_code;
	}

	public void setBus_code(String bus_code) {
		this.bus_code = bus_code;
	}

	public String getDest() {
		return dest;
	}

	public void setDest(String dest) {
		this.dest = dest;
	}

	public String getMaxSeat() {
		return maxSeat;
	}

	public void setMaxSeat(String maxSeat) {
		this.maxSeat = maxSeat;
	}

	public String getReser_go() {
		return reser_go;
	}

	public void setReser_go(String reser_go) {
		this.reser_go = reser_go;
	}

	public int getBus_tier() {
		return bus_tier;
	}

	public void setBus_tier(int bus_tier) {
		this.bus_tier = bus_tier;
	}

	public int getSchedule_price() {
		return schedule_price;
	}

	public void setSchedule_price(int schedule_price) {
		this.schedule_price = schedule_price;
	}

	@Override
	public String toString() {
		return "ScheduleVO [platform_code=" + platform_code + ", start_terminal_code=" + start_terminal_code
				+ ", dest_terminal_code=" + dest_terminal_code + ", schedule_start=" + schedule_start + ", driver_code="
				+ driver_code + ", bus_code=" + bus_code + ", dest=" + dest + ", maxSeat=" + maxSeat + ", reser_go="
				+ reser_go + ", bus_tier=" + bus_tier + ", schedule_price=" + schedule_price + ", reservedSeat="
				+ reservedSeat + "]";
	}

}
