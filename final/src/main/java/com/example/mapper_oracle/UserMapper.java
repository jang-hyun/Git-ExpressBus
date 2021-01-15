package com.example.mapper_oracle;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.domain.PageMaker;
import com.example.domain.ReservationVO;
import com.example.domain.UserVO;

public interface UserMapper {
	public void signUp(UserVO vo);

	public UserVO login(String user_id);

	public List<ReservationVO> myPage(@Param("user_id") String user_id, @Param("maker") PageMaker maker);

	public List<String> find(@Param("data") String data, @Param("type") String type);

	public int myPageCount(String user_id);

	public List<ReservationVO> myTicketList(String user_id);

	public void kakaoUpdate(UserVO vo);
}
