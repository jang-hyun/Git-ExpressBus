package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.ReservationVO;
import com.example.domain.ScheduleVO;
import com.example.mapper_oracle.ScheduleMapper;
import com.example.mapper_oracle.TerminalMapper;
import com.example.service.TradeService;

@Controller
@RequestMapping("/schedule")
public class ScheduleController {

	@Autowired
	TradeService service;

	@Autowired
	ScheduleMapper mapper;

	@Autowired
	TerminalMapper tMapper;

	@RequestMapping("/list")
	@ResponseBody
	public List<ScheduleVO> list(ScheduleVO vo) {
		vo.setReser_go(vo.getReser_go() + " ");
		List<ScheduleVO> list = mapper.list(vo);
		ScheduleVO getVO = null;
		for (int i = 0; i < list.size(); i++) {
			getVO = list.get(i);
			getVO.setReser_go(vo.getReser_go() + getVO.getSchedule_start());
			getVO.setReservedSeat(mapper.reservedSeat(getVO));
		}
		return list;
	}

	@RequestMapping(value = "/scheduleList", method = RequestMethod.GET)
	public String scheduleList() {
		return "redirect:/home";
	}

	@RequestMapping(value = "/scheduleList", method = RequestMethod.POST)
	public String scheduleList(Model model, ReservationVO vo) {
		model.addAttribute("ReservationVO", vo);
		model.addAttribute("TerminalVO", tMapper.read(vo));
		return "/reservation/schedule";
	}
}