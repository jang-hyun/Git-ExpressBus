package com.example.service;

import java.util.List;
import java.util.Map;
import java.util.Stack;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.BoardVO;
import com.example.mapper_oracle.BoardMapper;

@Service
public class ReportService {

	@Autowired
	BoardMapper board;

	@Transactional
	public List<Map<String, Object>> list(List<Map<String, Object>> list, String user_id) {
		List<BoardVO> driverList = board.driverList(user_id);
		Stack<String> stack = new Stack<>();
		BoardVO bvo = null;
		for (int i = 0; i < driverList.size(); i++) {
			bvo = driverList.get(i);
			stack.push(bvo.getDriver_code());
		}
		String dCode = null;
		while (!stack.isEmpty()) {
			dCode = stack.pop();
			for (int i = 0; i < list.size(); i++) {
				if (list.get(i).get("DRIVER_CODE").equals(dCode)) {
					list.remove(i);
					break;
				}
			}
		}
		return list;
	}

}
