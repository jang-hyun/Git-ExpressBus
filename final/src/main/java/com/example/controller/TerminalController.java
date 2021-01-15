package com.example.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.TerminalVO;
import com.example.mapper_oracle.TerminalMapper;

@Controller
@RequestMapping("/terminal")
public class TerminalController {

	@Autowired
	TerminalMapper mapper;

	@ResponseBody
	@RequestMapping("/terminalList")
	public List<TerminalVO> startList(String startQuery, String destQuery, boolean start) {
		List<TerminalVO> list = new ArrayList<>();
		if (!start) {
			if (startQuery.equals("경기/인천")) {
				for (TerminalVO vo : mapper.terminalList("경기")) {
					list.add(vo);
				}
				for (TerminalVO vo : mapper.terminalList("인천")) {
					list.add(vo);
				}
			} else {
				list = mapper.terminalList(startQuery);
			}
		} else {
			if (destQuery.length() == 0) {
				list = mapper.destList(startQuery);
			} else if (destQuery.equals("경기/인천")) {
				if (startQuery.equals("인천")) {
					list = mapper.terminalList("경기");
				} else if (startQuery.equals("경기")) {
					list = mapper.terminalList("인천");
				} else {
					for (TerminalVO vo : mapper.terminalList("경기")) {
						list.add(vo);
					}
					for (TerminalVO vo : mapper.terminalList("인천")) {
						list.add(vo);
					}
				}
			} else {
				if (!startQuery.equals(destQuery)) {
					list = mapper.terminalList(destQuery);
				}
			}
		}
		return list;
	}

	@ResponseBody
	@RequestMapping("/search")
	public List<TerminalVO> search(String query, boolean start, String startQuery) {
		List<TerminalVO> list = new ArrayList<>();
		switch (query) {
		case "전라":
		case "전라도":
			for (TerminalVO vo : mapper.terminalList("전남")) {
				list.add(vo);
			}
			for (TerminalVO vo : mapper.terminalList("전북")) {
				list.add(vo);
			}
			query = null;
			break;
		case "경상":
		case "경상도":
			for (TerminalVO vo : mapper.terminalList("경남")) {
				list.add(vo);
			}
			for (TerminalVO vo : mapper.terminalList("경북")) {
				list.add(vo);
			}
			query = null;
			break;
		case "충청":
		case "충청도":
			for (TerminalVO vo : mapper.terminalList("충남")) {
				list.add(vo);
			}
			for (TerminalVO vo : mapper.terminalList("충북")) {
				list.add(vo);
			}
			query = null;
			break;
		case "전라남도":
			query = "전남";
			break;
		case "전라북도":
			query = "전북";
			break;
		case "경상남도":
			query = "경남";
			break;
		case "경상북도":
			query = "경북";
			break;
		case "충청남도":
			query = "충남";
			break;
		case "충청북도":
			query = "충북";
			break;
		case "강원도":
			query = "강원";
			break;
		case "경기도":
			query = "경기";
			break;
		}
		List<TerminalVO> returnList = query == null ? list : mapper.terminalList(query);
		if (!start) {
			return returnList;
		} else {
			List<TerminalVO> removeList = mapper.terminalList(startQuery);
			for (TerminalVO vo : removeList) {
				for (int i = 0; i < returnList.size(); i++) {
					if (vo.getTerminal_code().equals(returnList.get(i).getTerminal_code())) {
						returnList.remove(i);
						break;
					}
				}
			}
			return returnList;
		}

	}

	@ResponseBody
	@RequestMapping("/destList")
	public List<TerminalVO> destList(String query) {
		return mapper.destList(query);
	}
}