package com.example.mapper_oracle;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.example.domain.DriverVO;

public interface DriverMapper {
	public void insert(DriverVO vo);

	public void read(String driver_code);

	public void punishment(String driver_code);

	public List<Map<String, Object>> findDriver(@Param("user_id") String user_id, @Param("now") String now);
}
