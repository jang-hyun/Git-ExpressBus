package com.example.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.BusTradeVO;
import com.example.mapper_oracle.BusTradeMapper;
import com.example.service.TradeService;

@Controller
@RequestMapping("/trade")
public class BusTradeController {

	@Autowired
	BusTradeMapper mapper;

	@Autowired
	TradeService service;

	@ResponseBody
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public boolean insert(BusTradeVO vo) {
		try {
			mapper.insert(vo);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@ResponseBody
	@RequestMapping("/myTradeList.json")
	public Map<String, Object> myTradeList(String id) {
		Map<String, Object> map = new HashMap<>();
		List<BusTradeVO> sendList = mapper.mySendList(id);
		sendList = service.makeTradeList(sendList, true);
		List<BusTradeVO> receiveList = mapper.myReceiveList(id);
		receiveList = service.makeTradeList(receiveList, false);
		map.put("sendList", sendList);
		map.put("sendCount", sendList.size());
		map.put("receiveList", receiveList);
		map.put("receiveCount", receiveList.size());
		return map;
	}

	@ResponseBody
	@RequestMapping(value = "/trade", method = RequestMethod.POST)
	public void trade(BusTradeVO vo) {
		service.trade(vo);
	}
}
