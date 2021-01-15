package com.example.mapper_oracle;

import java.util.List;

import com.example.domain.BusVO;

public interface BusMapper {
	public void insert(BusVO vo);

	public List<String> parents();

	public BusVO read(String bus_code);
}
