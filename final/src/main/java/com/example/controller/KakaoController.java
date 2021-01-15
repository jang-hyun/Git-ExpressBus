package com.example.controller;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.KakaoAPI;

@Controller
@RequestMapping("/kakao")
public class KakaoController {

	@ResponseBody
	@RequestMapping("/map.json")
	public String map(String query) throws Exception {
		query = URLEncoder.encode(query, "UTF-8");
		String apiURL = "https://dapi.kakao.com/v2/local/search/keyword.json?query=" + query;
		return KakaoAPI.search(apiURL);
	}

	@ResponseBody
	@RequestMapping("/point.json")
	public Map<String, Double> point(String start, String dest) {
		Map<String, Double> map = new HashMap<>();
		double start_x = 0, start_y = 0, dest_x = 0, dest_y = 0;
		start_x = point(start).get("x");
		start_y = point(start).get("y");
		dest_x = point(dest).get("x");
		dest_y = point(dest).get("y");
		map.put("start_x", start_x);
		map.put("start_y", start_y);
		map.put("dest_x", dest_x);
		map.put("dest_y", dest_y);
		return map;
	}

	Map<String, Double> point(String query) {
		Map<String, Double> map = new HashMap<>();
		String point = null;
		switch (query) {
		case "동서울":
			point = "37.533592, 127.093400";
			break;
		case "센트럴파크":
			point = "37.505291, 127.003261";
			break;
		case "인천":
			point = "37.441827, 126.701469";
			break;
		case "안산":
			point = "37.317636, 126.847570";
			break;
		case "수원":
			point = "37.250963, 127.020972";
			break;
		case "광명":
			point = "37.419558, 126.885982";
			break;
		case "속초":
			point = "38.211543, 128.590680";
			break;
		case "양양":
			point = "38.078103, 128.625978";
			break;
		case "춘천":
			point = "37.863297, 127.718625";
			break;
		case "대전":
			point = "36.352484, 127.437476";
			break;
		case "논산":
			point = "36.204928, 127.088304";
			break;
		case "천안":
			point = "36.820337, 127.154218";
			break;
		case "제천":
			point = "37.143670, 128.211151";
			break;
		case "청주":
			point = "36.625718, 127.432163";
			break;
		case "나주":
			point = "35.034100, 126.721389";
			break;
		case "목포":
			point = "34.813356, 126.417013";
			break;
		case "광주":
			point = "35.160429, 126.880305";
			break;
		case "고창":
			point = "35.436457, 126.696078";
			break;
		case "익산":
			point = "35.932127, 126.944884";
			break;
		case "전주":
			point = "35.835403, 127.133174";
			break;
		case "김해":
			point = "35.227887, 128.873506";
			break;
		case "마산":
			point = "35.223929, 128.588267";
			break;
		case "부산":
			point = "35.284488, 129.096335";
			break;
		case "구미":
			point = "36.123765, 128.352269";
			break;
		case "경주":
			point = "35.840384, 129.202122";
			break;
		case "동대구":
			point = "35.878647, 128.628195";
			break;
		}
		String[] pnt = point.split(", ");
		map.put("x", Double.parseDouble(pnt[1]));
		map.put("y", Double.parseDouble(pnt[0]));
		return map;
	}
}
