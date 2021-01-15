package com.example.domain;

public class BusCompanyVO {
	private String company_code, company_name, company_address, company_tel;

	public String getCompany_code() {
		return company_code;
	}

	public void setCompany_code(String company_code) {
		this.company_code = company_code;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getCompany_address() {
		return company_address;
	}

	public void setCompany_address(String company_address) {
		this.company_address = company_address;
	}

	public String getCompany_tel() {
		return company_tel;
	}

	public void setCompany_tel(String company_tel) {
		this.company_tel = company_tel;
	}

	@Override
	public String toString() {
		return "BusCompanyVO [company_code=" + company_code + ", company_name=" + company_name + ", company_address="
				+ company_address + ", company_tel=" + company_tel + "]";
	}

}
