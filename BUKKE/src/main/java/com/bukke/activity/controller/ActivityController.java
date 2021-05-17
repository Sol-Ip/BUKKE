package com.bukke.activity.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bukke.activity.service.ActivityService;

@Controller
public class ActivityController {
	
	@Autowired
	private ActivityService aService;
	
	// 클래스 전체목록 jsp 이동 (관리자)
	@RequestMapping(value="")
	public String activityListView() {
		return null;
	}
	// 클래스 상세정보 jsp 이동 (모든회원)
	@RequestMapping(value="")
	public String activityDetailView() {
		return null;
	}
	// *클래스 검색기능 메소드
	@RequestMapping(value="")
	public String activitySearch() {
		return null;
	}
	// 클래스 등록 jsp 이동 (업체회원)
	@RequestMapping(value="")
	public String activityEnrollView() {
		return null;
	}
	// *클래스 등록기능 메소드
	@RequestMapping(value="")
	public String activityAdd() {
		return null;
	}
	// 클래스 수정 jsp 이동 (업체회원)
	@RequestMapping(value="")
	public String activityModifyView() {
		return null;
	}
	// *클래스 수정기능 메소드
	@RequestMapping(value="")
	public String activityUpdate() {
		return null;
	}
	// *클래스 삭제기능 메소드
	@RequestMapping(value="")
	public String activityRemove() {
		return null;
	}
}
