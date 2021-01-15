package com.example.controller;

import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.WebUtils;

import com.example.mapper_oracle.UserMapper;

@Controller
public class HomeController {

	@Autowired
	UserMapper uMapper;

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest request) {
		Cookie cookie = WebUtils.getCookie(request, "user_id");
		HttpSession session = request.getSession();
		if (cookie != null) {
			session.setAttribute("LoginVO", uMapper.login(cookie.getValue()));
		}
		String dest = (String) session.getAttribute("dest");
		session.removeAttribute("dest");
		return dest == null ? "home" : "redirect:" + dest;
	}

	@RequestMapping("/")
	public String home() {
		return "redirect:/home";
	}

	@RequestMapping("/test")
	public void test() {

	}
}
