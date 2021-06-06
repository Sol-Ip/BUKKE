package com.bukke.spring.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {

	// 관리자페이지 이동
	@RequestMapping(value="adminPage.com", method=RequestMethod.GET)
	public String adminPage() {
		return "admin/index";
	}
}