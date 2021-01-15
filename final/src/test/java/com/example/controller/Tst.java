package com.example.controller;

import java.awt.Point;
import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.mapper_oracle.BusCompanyMapper;
import com.example.mapper_oracle.BusMapper;
import com.example.mapper_oracle.DriverMapper;
import com.example.mapper_oracle.PlatformMapper;
import com.example.mapper_oracle.ReservationMapper;
import com.example.mapper_oracle.SeatMapper;
import com.example.mapper_oracle.TerminalMapper;

@RunWith(SpringJUnit4ClassRunner.class) // ���� SpringJUnit4ClassRunner.class
										// import�Ѵ�.
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })

public class Tst {

	@Autowired
	BusCompanyMapper bcMapper;

	@Autowired
	PlatformMapper pMapper;

	@Autowired
	DriverMapper dMapper;

	@Autowired
	TerminalMapper tMapper;

	@Autowired
	BusMapper bMapper;

	@Autowired
	SeatMapper sMapper;

	@Autowired
	ReservationMapper rMapper;

	@Test
	public void run() {
		Map<String, Point> map = new HashMap<>();
		Point pnt = new Point();
		pnt.setLocation(5.6, 7.8);
		map.put("tst", pnt);
		System.out.println(map.get("tst"));
	}
}
