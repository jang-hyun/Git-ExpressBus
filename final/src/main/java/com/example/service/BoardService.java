package com.example.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.BadDriverVO;
import com.example.domain.BoardVO;
import com.example.domain.PageMaker;
import com.example.domain.Project;
import com.example.mapper_oracle.BadDriverMapper;
import com.example.mapper_oracle.BoardMapper;
import com.example.mapper_oracle.BusTradeMapper;

@Service
public class BoardService {

	@Autowired
	BoardMapper board;

	@Autowired
	BadDriverMapper bad;

	@Autowired
	BusTradeMapper trade;

	@Transactional
	public Map<String, Object> list(PageMaker maker) {
		Map<String, Object> data = new HashMap<>();
		maker.setTotalCount(board.totalCount(maker));
		List<BoardVO> list = board.list(maker);
		BoardVO temp = null;
		String[] time = null;
		boolean check;
		for (int i = 0; i < list.size(); i++) {
			temp = list.get(i);
			if (temp.getType() == Project.TRADE && !temp.getTitle().contains("[교환 완료]")
					&& !temp.getTitle().contains("[기간 만료]")) {
				time = temp.getTrade().split(" ");
				time = (time[1] + " " + time[2]).split("/");
				check = Project.isPast(Project.timeCheck(time), "board");
				if (check) {
					temp.setTitle("[기간 만료]" + temp.getTitle());
					board.update(temp);
				}
			}
		}
		data.put("maker", maker);
		data.put("list", list);
		return data;
	}

	@Transactional
	public void badDriverInsert(BoardVO vo) {
		board.insert(vo);
		BadDriverVO bvo = new BadDriverVO();
		bvo.setSeq_board(board.findMyReport(vo.getUser_id()));
		bvo.setDriver_code(vo.getDriver_code());
		bvo.setType(vo.getDriver_type());
		bvo.setUser_id(vo.getUser_id());
		bad.insert(bvo);
	}

	@Transactional
	public void reportDelete(int seq_board) {
		board.commentDelete(seq_board);
		bad.delete(seq_board);
		board.delete(seq_board);
	}

	@Transactional
	public void tradeDelete(int seq_board) {
		board.commentDelete(seq_board);
		trade.delete(seq_board);
		board.delete(seq_board);
	}

	@Transactional
	public void delete(int seq_board) {
		board.commentDelete(seq_board);
		board.delete(seq_board);
	}
}
