package com.example.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.BoardVO;
import com.example.domain.CommentVO;
import com.example.domain.PageMaker;
import com.example.domain.Project;
import com.example.mapper_oracle.BoardMapper;
import com.example.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	BoardMapper mapper;

	@Autowired
	BoardService service;

	@RequestMapping("/list.json")
	@ResponseBody
	public Map<String, Object> list(PageMaker maker) {
		return service.list(maker);
	}

	@RequestMapping("/list")
	public void list() {

	}

	@RequestMapping("/insert") // 게시판 insert.jsp
	public void signUp() {

	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertPost(BoardVO vo) {
		if (vo.getTrade().equals(".")) {
			vo.setTrade("");
		}
		if (vo.getType() == Project.REPORT) {
			service.badDriverInsert(vo);
		} else {
			vo.setDriver_code("");
			mapper.insert(vo);
		}
		return "redirect:/board/list";
	}

	@RequestMapping("/read")
	public void read(int seq_board, Model model) {
		model.addAttribute("vo", mapper.read(seq_board));
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(BoardVO vo) {
		vo.setImage(vo.getImage() == null ? "." : vo.getImage());
		vo.setTrade(vo.getTrade() == null ? "." : vo.getTrade());
		mapper.update(vo);
		return "redirect:list";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(int seq_board) {
		BoardVO vo = mapper.read(seq_board);
		if (vo.getType() == Project.REPORT) {
			service.reportDelete(seq_board);
		} else if (vo.getType() == Project.TRADE) {
			service.tradeDelete(seq_board);
		} else {
			service.delete(seq_board);
		}
		return "redirect:list";
	}

	@ResponseBody
	@RequestMapping(value = "/commentInsert", method = RequestMethod.POST)
	public void commentInsert(CommentVO vo) {
		mapper.commentInsert(vo);
	}

	@ResponseBody
	@RequestMapping("/commentList.json")
	public Map<String, Object> commentList(int seq_board, int page) {
		Map<String, Object> map = new HashMap<>();
		PageMaker maker = new PageMaker();
		maker.setPerPageNum(5);
		maker.setPage(page);
		maker.setTotalCount(mapper.commentCount(seq_board));
		List<CommentVO> commentList = mapper.commentList(seq_board, maker);
		map.put("commentList", commentList);
		map.put("commentCount", maker.getTotalCount());
		map.put("maker", maker);
		return map;
	}

	@ResponseBody
	@RequestMapping(value = "/myComment", method = RequestMethod.POST)
	public void myCommentDelete(int seq_board, String user_id, String comment, String date, int type) {
		CommentVO vo = new CommentVO();
		vo.setSeq_board(seq_board);
		vo.setUser_id(user_id);
		vo.setComment(comment);
		if (type == Project.UPDATE) {
			mapper.myCommentUpdate(vo, date);
		} else if (type == Project.DELETE) {
			mapper.myCommentDelete(vo, date);
		}
	}
}