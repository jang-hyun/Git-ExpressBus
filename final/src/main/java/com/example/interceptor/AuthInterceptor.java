package com.example.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String path = request.getServletPath();
		String query = request.getQueryString();
		HttpSession session = request.getSession();
		if (session.getAttribute("LoginVO") == null) {
			query = query == null || query.length() == 0 ? "" : "?" + query;
			session.setAttribute("dest", path + query);
			response.sendRedirect("/final/user/login");
		}
		return super.preHandle(request, response, handler);
	}
}
