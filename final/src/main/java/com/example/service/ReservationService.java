package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.ReservationVO;
import com.example.mapper_oracle.BoardMapper;
import com.example.mapper_oracle.BusTradeMapper;
import com.example.mapper_oracle.ReservationMapper;

@Service
public class ReservationService {
	@Autowired
	BoardMapper board;

	@Autowired
	BusTradeMapper trade;

	@Autowired
	ReservationMapper reservation;

	@Transactional
	public void delete(ReservationVO vo) {
		String ticket = vo.getStart() + " " + vo.getDest() + " " + vo.getSeat_num() + " " + vo.getReser_go();
		trade.tradeDelete(vo.getUser_id(), ticket);
		String trade = vo.getStart() + "-" + vo.getDest() + " " + vo.getReser_go() + " 출발 " + vo.getSeat_num() + "번 좌석";
		board.tradeDelete(vo.getUser_id(), trade);
		reservation.delete(vo);
	}
}
