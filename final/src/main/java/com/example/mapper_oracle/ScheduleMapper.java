package com.example.mapper_oracle;

import java.util.List;

import com.example.domain.ScheduleVO;

public interface ScheduleMapper {
	public List<ScheduleVO> list(ScheduleVO vo);

	public int reservedSeat(ScheduleVO vo);
}
