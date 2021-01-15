package com.example.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.WebUtils;

import com.example.domain.BusCompanyVO;
import com.example.domain.Project;
import com.example.mapper_oracle.BusCompanyMapper;

@Controller
@RequestMapping("/notice")
public class NoticeController {

	@Autowired
	BusCompanyMapper bcMapper;

	@RequestMapping("/notice")
	public void notice() {

	}

	@RequestMapping("/QnA")
	public void QnA() {

	}

	@RequestMapping("/guide")
	public void guide() {
	}

	@ResponseBody
	@RequestMapping("/noticeID")
	public void guide(String id, HttpSession session) {
		session.setAttribute("noticeID", id);
	}

	@ResponseBody
	@RequestMapping("/guide.json")
	public List<BusCompanyVO> list() {
		return bcMapper.list();
	}

	@ResponseBody
	@RequestMapping(value = "/guide", method = RequestMethod.POST)
	public void removeNoticeID(HttpSession session) {
		session.removeAttribute("noticeID");
	}

	@ResponseBody
	@RequestMapping("/popupCheck")
	public boolean popUp(HttpServletRequest request, HttpServletResponse response) {
		Cookie cookie = WebUtils.getCookie(request, "popup");
		if (cookie == null) {
			return true;
		} else if (cookie.getValue().equals(Project.TODAY)) {
			return false;
		} else {
			cookie.setMaxAge(0);
			cookie.setPath("/");
			response.addCookie(cookie);
			return true;
		}
	}

	@RequestMapping("/popupPage")
	public void popupPage() {

	}

	@ResponseBody
	@RequestMapping("/popupCookie")
	public void popupCookie(HttpServletResponse response) {
		Cookie cookie = new Cookie("popup", Project.TODAY);
		cookie.setPath("/");
		cookie.setMaxAge(Integer.MAX_VALUE);
		response.addCookie(cookie);
	}

	@ResponseBody
	@RequestMapping("/QnA.json")
	public List<Map<String, Object>> crawling() {
		List<Map<String, Object>> list = new ArrayList<>();
		Map<String, Object> map = null;
		System.setProperty("webdriver.chrome.driver", "D:\\spring\\chromedriver.exe");
		ChromeOptions options = new ChromeOptions();
		options.addArguments("headless");
		WebDriver wd = new ChromeDriver(options);
		String url = "https://www.ti21.co.kr/view/board/faq.aspx?search=&page=";
		String[] title = null;
		List<WebElement> questionList = null;
		for (int i = 1; i <= 3; i++) {
			wd.get(url + i);
			questionList = wd.findElements(By.className("question"));
			for (WebElement question : questionList) {
				question.click();
				map = new HashMap<>();
				title = question.findElement(By.className("title")).getText().split("\n");
				map.put("answer", question.findElement(By.className("answer")).getText());
				map.put("question", title[1]);
				map.put("number", title[0]);
				list.add(map);
			}
		}
		return list;
	}

}