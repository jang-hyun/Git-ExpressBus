package com.example.mapper_oracle;

import java.util.List;

import com.example.domain.BusCompanyVO;

public interface BusCompanyMapper {
	public void insert(BusCompanyVO vo);

	public List<String> parents();

	public BusCompanyVO read(String company_code);

	public List<BusCompanyVO> list();
}
