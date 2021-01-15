package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.BadDriverVO;
import com.example.domain.BoardVO;
import com.example.mapper_oracle.BadDriverMapper;
import com.example.mapper_oracle.BoardMapper;
import com.example.mapper_oracle.DriverMapper;

@Service
public class AdminService {

	@Autowired
	BoardMapper board;

	@Autowired
	DriverMapper driver;

	@Autowired
	BadDriverMapper bad;

	@Autowired
	BoardService bService;

	@Transactional
	public void report(BadDriverVO vo, boolean isPunishment) {
		BoardVO bvo = board.read(vo.getSeq_board());
		bvo.setTrade("");
		if (isPunishment) {
			driver.punishment(vo.getDriver_code());
			bad.complete(vo);
			bvo.setTitle("[처벌 완료] " + bvo.getTitle().substring(4));
			board.update(bvo);
		} else {
			bService.reportDelete(bvo.getSeq_board());
		}
	}
}
