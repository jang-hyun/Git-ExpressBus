package com.example.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.ReservationVO;
import com.example.mapper_oracle.BusCompanyMapper;
import com.example.mapper_oracle.BusMapper;
import com.example.mapper_oracle.ReservationMapper;
import com.example.mapper_oracle.SeatMapper;
import com.example.mapper_oracle.TerminalMapper;
import com.example.service.ReservationService;

@Controller
@RequestMapping("/reservation")
public class ReservationController {

	@Autowired
	ReservationMapper rMapper;

	@Autowired
	SeatMapper sMapper;

	@Autowired
	TerminalMapper tMapper;

	@Autowired
	BusMapper bMapper;

	@Autowired
	BusCompanyMapper bcMapper;

	@Autowired
	ReservationService service;

	@RequestMapping("/list")
	@ResponseBody
	public List<Map<String, Object>> list(ReservationVO vo) {
		if (vo.getReser_go().length() != 16) {
			vo.setReser_go(vo.getReser_go() + " ");
		}
		List<Map<String, Object>> list = new ArrayList<>();
		Map<String, Object> map;
		List<Integer> reservedList = rMapper.reservedList(vo);
		int maxSeat = sMapper.maxSeat(vo.getBus_code());
		for (int i = 1, seat; i <= maxSeat; i++) {
			map = new HashMap<>();
			seat = Collections.binarySearch(reservedList, i);
			map.put("seatNum", i);
			map.put("canChoose", seat < 0 ? true : false);
			list.add(map);
		}
		return list;
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public void insert(ReservationVO vo) {
		rMapper.insert(vo);
	}

	@RequestMapping(value = "/seatChoose", method = RequestMethod.GET)
	public String seatChoose() {
		return "redirect:/home";
	}

	@RequestMapping(value = "/seatChoose", method = RequestMethod.POST)
	public void seatChoose(ReservationVO vo, Model model) {
		Map<String, Object> map = new HashMap<>();
		map.put("ReservationVO", vo);
		map.put("TerminalVO", tMapper.read(vo));
		map.put("BusCompanyVO", bcMapper.read(bMapper.read(vo.getBus_code()).getCompany_code()));
		map.put("max", sMapper.maxSeat(vo.getBus_code()));
		model.addAllAttributes(map);
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public void delete(ReservationVO vo) {
		service.delete(vo);
	}
}
