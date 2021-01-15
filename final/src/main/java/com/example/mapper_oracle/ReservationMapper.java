package com.example.mapper_oracle;

import java.util.List;

import com.example.domain.ReservationVO;

public interface ReservationMapper {
	public void insert(ReservationVO vo);

	public List<Integer> reservedList(ReservationVO vo);

	public void delete(ReservationVO vo);

	public void update(ReservationVO vo);

	public ReservationVO tradeRead(ReservationVO vo);

	public void trade(ReservationVO vo);
}
