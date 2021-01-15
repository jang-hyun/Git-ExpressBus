package com.example.domain;

public class BusVO {
	private String company_code, bus_code, bus_status;
	private int bus_tier;

	public String getCompany_code() {
		return company_code;
	}

	public void setCompany_code(String company_code) {
		this.company_code = company_code;
	}

	public String getBus_code() {
		return bus_code;
	}

	public void setBus_code(String bus_code) {
		this.bus_code = bus_code;
	}

	public String getBus_status() {
		return bus_status;
	}

	public void setBus_status(String bus_status) {
		this.bus_status = bus_status;
	}

	public int getBus_tier() {
		return bus_tier;
	}

	public void setBus_tier(int bus_tier) {
		this.bus_tier = bus_tier;
	}

	@Override
	public String toString() {
		return "BusVO [company_code=" + company_code + ", bus_code=" + bus_code + ", bus_status=" + bus_status
				+ ", bus_tier=" + bus_tier + "]";
	}

}
