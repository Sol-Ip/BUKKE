package com.bukke.review.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bukke.review.service.ReviewService;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService rService;
	
	// 후기 전체 조회
	@RequestMapping(value="", method=RequestMethod.GET)
	public String reviewList(Model model) {
		return "";
	}
	
	// 후기 상세 조회
	@RequestMapping(value="", method=RequestMethod.GET)
	public String reviewDetail(@RequestParam("reviewNo") int reviewNo, Model model) {
		return "";
	}
	
	// 후기 검색 기능
	@RequestMapping(value="")
	public String reviewSearch() {
		return null;
	}
	
	// 후기 등록 뷰
	@RequestMapping(value="")
	public String reviewEnrollView() {
		return null;
	}
	
	// 후기 등록 기능
	@RequestMapping(value="")
	public String reviewAdd() {
		return null;
	}
	
	// 후기 수정 뷰
	@RequestMapping(value="")
	public String reviewModifyView() {
		return null;
	}
	
	// 후기 수정 기능
	@RequestMapping(value="")
	public String reviewUpdate() {
		return null;
	}
	
	// 후기 삭제 기능
	@RequestMapping(value="")
	public String reviewRemove() {
		return null;
	}
}
