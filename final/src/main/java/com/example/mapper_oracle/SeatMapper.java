package com.example.mapper_oracle;

import com.example.domain.SeatVO;

public interface SeatMapper {
	public int maxSeat(String bus_code);
	public void insert(SeatVO vo);
}
