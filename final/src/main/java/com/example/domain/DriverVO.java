package com.example.domain;

public class DriverVO {
	private String company_code, driver_code, driver_name;
	private int badcount;

	public String getCompany_code() {
		return company_code;
	}

	public void setCompany_code(String company_code) {
		this.company_code = company_code;
	}

	public String getDriver_code() {
		return driver_code;
	}

	public void setDriver_code(String driver_code) {
		this.driver_code = driver_code;
	}

	public String getDriver_name() {
		return driver_name;
	}

	public void setDriver_name(String driver_name) {
		this.driver_name = driver_name;
	}

	public int getBadcount() {
		return badcount;
	}

	public void setBadcount(int badcount) {
		this.badcount = badcount;
	}

	@Override
	public String toString() {
		return "DriverVO [company_code=" + company_code + ", driver_code=" + driver_code + ", driver_name="
				+ driver_name + ", badcount=" + badcount + "]";
	}

}
