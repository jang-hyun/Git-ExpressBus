package com.example.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.UUID;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.WebUtils;

import com.example.domain.PageMaker;
import com.example.domain.Project;
import com.example.domain.ReservationVO;
import com.example.domain.UserVO;
import com.example.mapper_oracle.BoardMapper;
import com.example.mapper_oracle.UserMapper;
import com.example.service.TradeService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserMapper mapper;

	@Autowired
	BoardMapper bMapper;

	@Autowired
	TradeService tService;

	// 로그인 페이지로 이동
	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		Cookie cookie = WebUtils.getCookie(request, "user_id");
		HttpSession session = request.getSession();
		if (session.getAttribute("LoginVO") != null) {
			return "redirect:/home";
		} else {
			if (cookie != null) {
				session.setAttribute("LoginVO", mapper.login(cookie.getValue()));
				return "redirect:/home";
			} else {
				return "/user/login";
			}
		}
	}

	// 로그인
	@ResponseBody
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public int loginPost(UserVO vo, HttpSession session, boolean chkLogin, HttpServletResponse response) {
		UserVO resultVO = mapper.login(vo.getUser_id());
		if (resultVO == null) { // 아이디 없을때
			return 0;
		} else if (resultVO.getUser_password().equals(vo.getUser_password())) { // 성공
			session.setAttribute("LoginVO", resultVO);
			if (chkLogin) {
				Cookie cookie = new Cookie("user_id", vo.getUser_id());
				cookie.setPath("/");
				cookie.setMaxAge(Integer.MAX_VALUE);
				response.addCookie(cookie);
			}
			return 2;
		} else { // 로그인 실패
			return 1;
		}

	}

	@RequestMapping(value = "/callback", method = RequestMethod.GET)
	public String loginPOSTNaver(HttpSession session) {
		return "/user/callback";
	}

	// 카카오톡 관련 로그아웃 메소드
	@RequestMapping(value = "/kakao_logout.do", method = RequestMethod.POST)
	public String kakao_logout(HttpSession session, HttpServletRequest request) {
		// 세션에 담긴값 초기화
		session.invalidate();
		return "redirect:/home";
	}

	// 네이버 관련 로그아웃 메소드
	@RequestMapping(value = "/naver_logout.do", method = RequestMethod.POST)
	public String naver_logout(HttpSession session, HttpServletRequest request) {
		// 세션에 담긴값 초기화
		session.invalidate();
		return "redirect:/home";
	}

	// 로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		// 쿠키삭제
		Cookie cookie = WebUtils.getCookie(request, "user_id");
		if (cookie != null) {
			cookie.setPath("/");
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
		session.invalidate();
		return "redirect:/home";
	}

	// 회원가입 .jsp 로 이동
	@RequestMapping("/signUp")
	public String signUp(HttpSession session) {
		return session.getAttribute("LoginVO") != null ? "redirect:/home" : "/user/signUp";
	}

	// 카카오 로그인시 실행되는 메소드
	@ResponseBody
	@RequestMapping(value = "/kakaoSignUp", method = RequestMethod.POST)
	public void kakaoSignUp(UserVO vo, HttpSession session) {
		UserVO temp = mapper.login(vo.getUser_id());
		vo.setUser_name("kakao_" + vo.getUser_name());
		vo.setUser_password(UUID.randomUUID().toString().substring(0, 20));
		vo.setUser_email(".");
		vo.setUser_tel(".");
		if (temp == null) {
			mapper.signUp(vo);
		} else {
			mapper.kakaoUpdate(vo);
		}
		session.setAttribute("LoginVO", vo);
	}

	// 회원가입
	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public String insertPost(UserVO vo, HttpSession session) {
		vo.setUser_id(vo.getUser_id().trim());
		vo.setUser_password(vo.getUser_password().trim());
		vo.setUser_tel(makePhoneNumber(vo.getUser_tel()));
		mapper.signUp(vo);
		session.setAttribute("LoginVO", vo);
		return "redirect:/home";
	}

	// myPage.jsp 이동
	@RequestMapping("/myPage")
	public void myPage() {

	}

	// 마이페이지에서 예매한 티켓 정보 호출
	@ResponseBody
	@RequestMapping("/myPage.json")
	public Map<String, Object> myPage(int page, String user_id) {
		PageMaker maker = new PageMaker();
		Map<String, Object> data = new HashMap<>();
		maker.setPage(page);
		maker.setTotalCount(mapper.myPageCount(user_id));
		maker.setPerPageNum(5);
		List<ReservationVO> list = mapper.myPage(user_id, maker);
		for (int i = 0; i < list.size(); i++) {
			list.get(i).setStart(list.get(i).getStart().split(" ")[1]);
			list.get(i).setDest(list.get(i).getDest().split(" ")[1]);
		}
		List<Map<String, Object>> myList = new ArrayList<>();
		Map<String, Object> map = null;
		ReservationVO rvo = null;
		String[] time = null;
		Map<String, Integer> getTimeMap = null;
		for (int i = 0; i < list.size(); i++) {
			map = new HashMap<>();
			rvo = list.get(i);
			time = rvo.getReser_go().split("/");
			getTimeMap = Project.timeCheck(time);
			map.put("platform_code",
					rvo.getPlatform_code().length() == 1 ? "0" + rvo.getPlatform_code() : rvo.getPlatform_code());
			map.put("start_terminal_code", rvo.getStart_terminal_code());
			map.put("dest_terminal_code", rvo.getDest_terminal_code());
			map.put("schedule_start", rvo.getSchedule_start());
			map.put("user_id", rvo.getUser_id());
			map.put("reser_go", rvo.getReser_go());
			map.put("bus_code", rvo.getBus_code());
			map.put("start", rvo.getStart());
			map.put("dest", rvo.getDest());
			map.put("ischild", rvo.getIschild());
			map.put("seat_num", rvo.getSeat_num());
			map.put("reser_price", rvo.getReser_price());
			map.put("reser_date", Project.dateFormat(rvo.getReser_date()));
			map.put("isPast", Project.isPast(getTimeMap, "myPage"));
			myList.add(map);
		}
		data.put("myList", myList);
		data.put("myListSize", maker.getTotalCount());
		data.put("maker", maker);
		return data;
	}

	@ResponseBody
	@RequestMapping("/trade.json")
	public Map<String, Object> myPage(HttpSession session, ReservationVO rvo) {
		ReservationVO temp = null;
		Queue<ReservationVO> queue = null;
		if (rvo.getStart().equals("") && rvo.getDest().equals("")) {
			rvo.setStart(null);
			rvo.setDest(null);
		}
		Map<String, Object> map = new HashMap<>();
		UserVO vo = (UserVO) session.getAttribute("LoginVO");
		List<ReservationVO> list = null;
		if (vo != null) {
			list = mapper.myTicketList(vo.getUser_id());
			for (int i = 0; i < list.size(); i++) {
				list.get(i).setStart(list.get(i).getStart().split(" ")[1]);
				list.get(i).setDest(list.get(i).getDest().split(" ")[1]);
			}
			if (rvo.getStart() != null && rvo.getDest() != null) {
				queue = new LinkedList<>();
				for (int i = 0; i < list.size(); i++) {
					temp = list.get(i);
					if (!temp.getStart().equals(rvo.getStart()) || !temp.getDest().equals(rvo.getDest())) {
						queue.add(temp);
					}
				}
				while (!queue.isEmpty()) {
					list.remove(queue.poll());
				}
			}
			String[] time = null;
			Map<String, Integer> tempMap = null;
			queue = new LinkedList<>();
			for (int i = 0; i < list.size(); i++) {
				temp = list.get(i);
				time = temp.getReser_go().split("/");
				tempMap = Project.timeCheck(time);
				if (Project.isPast(tempMap, "")) {
					queue.add(temp);
				}
			}
			while (!queue.isEmpty()) {
				list.remove(queue.poll());
			}
		}
		list = tService.makeTradeList(vo.getUser_id(), list);
		map.put("list", list);
		try {
			map.put("count", list.size());
		} catch (Exception e) {
			map.put("count", 0);
		}
		return map;
	}

	@ResponseBody
	@RequestMapping(value = "/isOverlap", method = RequestMethod.POST)
	public boolean isOverlap(String user_id) {
		return mapper.login(user_id) == null ? true : false;
	}

	@ResponseBody
	@RequestMapping(value = "/destRemove", method = RequestMethod.POST)
	public void destRemove(HttpSession session) {
		session.removeAttribute("dest");
	}

	@ResponseBody
	@RequestMapping(value = "/find", method = RequestMethod.POST)
	public List<String> find(String type, String data) {
		String[] param = data.split("&"); // 0이 아이디, 1이 이메일
		if (param.length == 1) {
			String temp = param[0];
			param = new String[2];
			param[0] = temp;
			param[1] = "";
		}
		switch (type) {
		case "id":
			return mapper.find(makePhoneNumber(data), type);
		case "pw":
			UserVO info = mapper.login(param[0]);
			if (info != null) {
				if (param[1].equals(info.getUser_email())) {
					return mapper.find(param[0], type);
				}
			}
		}
		return new ArrayList<>();

	}

	String makePhoneNumber(String user_tel) {
		String[] tel = user_tel.split("");
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < tel.length; i++) {
			sb.append(i == 2 || i == tel.length - 5 ? tel[i] + '-' : tel[i]);
		}
		return sb.toString();
	}
}
