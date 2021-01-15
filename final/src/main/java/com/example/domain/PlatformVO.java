package com.example.domain;

public class PlatformVO extends TerminalVO {
	private String platform_code, start_terminal_code, dest_terminal_code;

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

	@Override
	public String toString() {
		return "PlatformVO [platform_code=" + platform_code + ", start_terminal_code=" + start_terminal_code
				+ ", dest_terminal_code=" + dest_terminal_code + "]";
	}

}
