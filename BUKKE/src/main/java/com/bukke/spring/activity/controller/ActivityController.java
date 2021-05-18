package com.bukke.spring.activity.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.bukke.spring.activity.service.ActivityService;

@Controller
public class ActivityController {
	
	@Autowired
	private ActivityService aService;
	
	// 클래스 전체목록 jsp 이동 (관리자)
	public String activityListView() {
		return null;
	}
	// 클래스 상세정보 jsp 이동 (모든회원)
	public String activityDetailView() {
		return null;
	}
	// *클래스 검색기능 메소드
	public String activitySearch() {
		return null;
	}
	// 클래스 등록 jsp 이동 (업체회원)
	public String activityEnrollView() {
		return null;
	}
	// *클래스 등록기능 메소드
	public String activityAdd() {
		return null;
	}
	// 클래스 수정 jsp 이동 (업체회원)
	public String activityModifyView() {
		return null;
	}
	// *클래스 수정기능 메소드
	public String activityUpdate() {
		return null;
	}
	// *클래스 삭제기능 메소드
	public String activityRemove() {
		return null;
	}
}
