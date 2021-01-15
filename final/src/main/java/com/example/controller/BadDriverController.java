package com.example.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.BadDriverVO;
import com.example.mapper_oracle.BadDriverMapper;
import com.example.mapper_oracle.DriverMapper;
import com.example.service.ReportService;

@Controller
@RequestMapping("/bad")
public class BadDriverController {

	@Autowired
	BadDriverMapper mapper;

	@Autowired
	DriverMapper driverMapper;

	@Autowired
	ReportService service;
	
	@ResponseBody
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public void insert(BadDriverVO vo) {
		mapper.insert(vo);
	}

	@ResponseBody
	@RequestMapping("/list.json")
	public Map<String, Object> list(BadDriverVO vo) {
		Map<String, Object> map = new HashMap<>();
		map.put("list", mapper.list(vo));
		return map;
	}

	@ResponseBody
	@RequestMapping("/findDriver.json")
	public Map<String, Object> findDriver(String user_id, String now) {
		Map<String, Object> map = new HashMap<>();
		List<Map<String, Object>> list = driverMapper.findDriver(user_id, now);
		list = service.list(list, user_id);
		map.put("list", list);
		map.put("count", list.size());
		return map;
	}
}
