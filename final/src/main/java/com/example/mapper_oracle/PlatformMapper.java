package com.example.mapper_oracle;

import java.util.List;

import com.example.domain.PlatformVO;
import com.example.domain.TerminalVO;

public interface PlatformMapper {

	public List<TerminalVO> getTerminalList();

	public void insert(PlatformVO vo);
}
