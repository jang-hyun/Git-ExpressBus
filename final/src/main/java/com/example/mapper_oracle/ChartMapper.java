package com.example.mapper_oracle;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface ChartMapper {
	// 차트
	public List<Map<String, Object>> chart(@Param("sCode") String sCode, @Param("dCode") String dCode,
			@Param("date") String date);

	public List<Map<String, Object>> dateList(@Param("sCode") String sCode, @Param("dCode") String dCode);
}