package com.example.domain;

public class TerminalVO {
	private String terminal_code, terminal_name, terminal_address, terminal_tel, terminal_place0, terminal_place1;

	public String getTerminal_code() {
		return terminal_code;
	}

	public void setTerminal_code(String terminal_code) {
		this.terminal_code = terminal_code;
	}

	public String getTerminal_name() {
		return terminal_name;
	}

	public void setTerminal_name(String terminal_name) {
		this.terminal_name = terminal_name;
		this.terminal_place0 = terminal_name.split(" ")[0];
		this.terminal_place1 = terminal_name.split(" ")[1];
	}

	public String getTerminal_address() {
		return terminal_address;
	}

	public void setTerminal_address(String terminal_address) {
		this.terminal_address = terminal_address;
	}

	public String getTerminal_tel() {
		return terminal_tel;
	}

	public void setTerminal_tel(String terminal_tel) {
		this.terminal_tel = terminal_tel;
	}

	public String getTerminal_place0() {
		return terminal_place0;
	}

	public String getTerminal_place1() {
		return terminal_place1;
	}

	@Override
	public String toString() {
		return "TerminalVO [terminal_code=" + terminal_code + ", terminal_name=" + terminal_name + ", terminal_address="
				+ terminal_address + ", terminal_tel=" + terminal_tel + ", terminal_place0=" + terminal_place0
				+ ", terminal_place1=" + terminal_place1 + "]";
	}

}
