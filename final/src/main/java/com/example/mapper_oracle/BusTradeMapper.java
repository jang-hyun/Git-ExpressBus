package com.example.mapper_oracle;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.domain.BusTradeVO;

public interface BusTradeMapper {
	public void insert(BusTradeVO vo);

	public List<BusTradeVO> mySendList(String user_id);

	public List<BusTradeVO> myReceiveList(String user_id);

	public void delete(int seq_board);

	public void tradeDelete(@Param("user_id") String user_id, @Param("ticket") String ticket);
}
