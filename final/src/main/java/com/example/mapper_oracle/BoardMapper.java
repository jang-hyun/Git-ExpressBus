package com.example.mapper_oracle;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.domain.BoardVO;
import com.example.domain.CommentVO;
import com.example.domain.PageMaker;

public interface BoardMapper {
	public void insert(BoardVO vo);

	public List<BoardVO> list(PageMaker maker);

	public int totalCount(PageMaker maker);

	public void update(BoardVO vo);

	public void delete(int seq_board);

	public BoardVO read(int seq_board);

	public int findMyReport(String user_id);

	public List<BoardVO> myTradeList(String user_id);

	public List<BoardVO> driverList(String user_id);

	public void tradeDelete(@Param("user_id") String user_id, @Param("trade") String trade);

	public List<CommentVO> commentList(@Param("seq_board") int seq_board, @Param("maker") PageMaker maker);

	public int commentCount(int seq_board);

	public void commentInsert(CommentVO vo);

	public void commentDelete(int seq_board);

	public void myCommentDelete(@Param("vo") CommentVO vo, @Param("date") String date);

	public void myCommentUpdate(@Param("vo") CommentVO vo, @Param("date") String date);
}