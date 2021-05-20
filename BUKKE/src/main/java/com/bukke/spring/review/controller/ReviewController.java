package com.bukke.spring.review.controller;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bukke.spring.review.domain.Review;
import com.bukke.spring.review.service.ReviewService;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService rService;
	
	// 후기 전체 조회
	@RequestMapping(value="reviewList.com", method=RequestMethod.GET)
	public String reviewList(Model model) {
		ArrayList<Review> rList = rService.printAllReview();
	
		if(!rList.isEmpty()) {
			model.addAttribute("rList", rList);
			return "review/reviewListView";
		}else {
			model.addAttribute("msg", "후기 목록조회 실패");
			return "common/errorPage";
		}
		
	}
	
	// 후기 상세 조회
	//@RequestMapping(value="", method=RequestMethod.GET)
	public String reviewDetail(@RequestParam("reviewNo") int reviewNo, Model model) {
		return "";
	}
	
	// 후기 검색 기능
	public String reviewSearch() {
		return null;
	}
	
	// 후기 등록 뷰
	public String reviewEnrollView() {
		return null;
	}
	
	// 후기 등록 기능
	public String reviewAdd() {
		return null;
	}
	
	// 후기 수정 뷰
	public String reviewModifyView() {
		return null;
	}
	
	// 후기 수정 기능
	public String reviewUpdate() {
		return null;
	}
	
	// 후기 삭제 기능
	public String reviewRemove() {
		return null;
	}
	// 댓글 조회 기능
	public String commentList() {
		return null;
	}
	// 댓글 작성 기능
	public String commentWrite() {
		return null;
	}
	// 댓글 수정 기능
	public String commentUpdate() {
		return null;
	}
	// 댓글 삭제 기능
	public String commentRemove() {
		return null;
	}
}
