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
	public String ActivityListView() {
		return null;
	}
	// 클래스 상세정보 jsp 이동 (모든회원)
	@RequestMapping(value="")
	public String ActivityDetailView() {
		return null;
	}
	// *클래스 검색기능 메소드
	@RequestMapping(value="")
	public String ActivitySearch() {
		return null;
	}
	// 클래스 등록 jsp 이동 (업체회원)
	@RequestMapping(value="")
	public String ActivityEnrollView() {
		return null;
	}
	// *클래스 등록기능 메소드
	@RequestMapping(value="")
	public String ActivityAdd() {
		return null;
	}
	// 클래스 수정 jsp 이동 (업체회원)
	@RequestMapping(value="")
	public String ActivityModifyView() {
		return null;
	}
	// *클래스 수정기능 메소드
	@RequestMapping(value="")
	public String ActivityUpdate() {
		return null;
	}
	// *클래스 삭제기능 메소드
	@RequestMapping(value="")
	public String ActivityRemove() {
		return null;
	}
}
