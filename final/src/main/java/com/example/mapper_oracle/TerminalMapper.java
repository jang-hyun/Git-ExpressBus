package com.example.mapper_oracle;

import java.util.List;
import java.util.Map;

import com.example.domain.ReservationVO;
import com.example.domain.TerminalVO;

public interface TerminalMapper {
	public void insert(TerminalVO vo);

	public List<TerminalVO> parents();

	public void update(TerminalVO vo);

	public List<TerminalVO> terminalList(String query);

	public List<TerminalVO> destList(String query);
	
	public Map<String, String> read(ReservationVO vo);
	
	public List<TerminalVO> list();
}
