package com.example.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.BadDriverVO;
import com.example.domain.Project;
import com.example.domain.UserVO;
import com.example.mapper_oracle.BadDriverMapper;
import com.example.mapper_oracle.ChartMapper;
import com.example.mapper_oracle.TerminalMapper;
import com.example.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	ChartMapper cMapper;

	@Autowired
	TerminalMapper tMapper;

	@Autowired
	BadDriverMapper bMapper;

	@Autowired
	AdminService service;

	@ResponseBody
	@RequestMapping(value = "/report", method = RequestMethod.POST)
	public void report(BadDriverVO vo, boolean isPunishment) {
		System.out.println(vo);
		service.report(vo, isPunishment);
	}

	@ResponseBody
	@RequestMapping("/reportedList.json")
	public Map<String, Object> reportedList() {
		Map<String, Object> map = new HashMap<>();
		List<Map<String, Object>> reportList = bMapper.reportedList();
		for (int i = 0; i < reportList.size(); i++) {
			reportList.get(i).put("TYPE", typeFormat(Integer.parseInt(reportList.get(i).get("TYPE").toString())));
			reportList.get(i).put("REPORTDATE", Project.dateFormat((Date) reportList.get(i).get("REPORTDATE")));
		}
		map.put("reportList", reportList);
		map.put("count", reportList.size());
		return map;
	}

	@RequestMapping("/chart.json")
	@ResponseBody
	public List<List<Object>> chartJson(String sCode, String dCode, String date) {
		List<Map<String, Object>> database = cMapper.chart(sCode, dCode, date);
		List<List<Object>> list = new ArrayList<>();
		List<Object> olist = new ArrayList<>();
		olist.add("출발 날짜");
		olist.add("예매수");
		list.add(olist);
		for (Map<String, Object> map : database) {
			olist = new ArrayList<>();
			olist.add(map.get("time"));
			olist.add(map.get("CNT"));
			list.add(olist);
		}
		return list;
	}

	@ResponseBody
	@RequestMapping("/dateList.json")
	public List<Map<String, Object>> datList(String sCode, String dCode) {
		return cMapper.dateList(sCode, dCode);
	}

	@RequestMapping("/adminPage")
	public String chart(Model model, HttpSession session) {
		UserVO vo = (UserVO) session.getAttribute("LoginVO");
		if (vo == null) {
			return "redirect:/home";
		} else if (!vo.getUser_id().equals("guswns")) {
			return "redirect:/home";
		} else {
			model.addAttribute("terminalList", tMapper.list());
			return "/admin/adminPage";
		}
	}

	String typeFormat(int n) {
		switch (n) {
		case 1:
			return "난폭운전";
		case 2:
			return "운행시간 미준수";
		case 3:
			return "불친절";
		case 4:
			return "음주 의심";
		case 5:
			return "운행중 휴대전화 사용";
		case 6:
			return "냉/난방 제대로 안해줌";
		}
		return null;
	}

}
