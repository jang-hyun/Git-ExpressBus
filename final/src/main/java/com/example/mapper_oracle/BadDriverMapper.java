package com.example.mapper_oracle;

import java.util.List;
import java.util.Map;

import com.example.domain.BadDriverVO;

public interface BadDriverMapper {
	public void insert(BadDriverVO vo);

	public List<BadDriverVO> list(BadDriverVO vo);

	public void complete(BadDriverVO vo);

	public void delete(int seq_board);

	public List<Map<String, Object>> reportedList();
}
