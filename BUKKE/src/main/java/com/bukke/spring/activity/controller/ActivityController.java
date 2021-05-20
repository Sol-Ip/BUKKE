package com.bukke.spring.activity.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.activity.service.ActivityService;

@Controller
public class ActivityController {
	
	@Autowired
	private ActivityService aService;
	
	// 클래스 전체목록 jsp 이동 (관리자)
	@RequestMapping(value="activityList.com", method=RequestMethod.GET)
	public String activityListView()
								//ModelAndView mv
								//	, @RequestParam(value="page", required=false) Integer page) 
														{
		//ArrayList<Activity> aList = aService.printAllActivity();
		
		
		return "activity/activityListView";
	}
	// 클래스 상세정보 jsp 이동 (모든회원)
	@RequestMapping(value="activityList")
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
	
	
	@RequestMapping(value="loginForm.com" , method = RequestMethod.GET)
	public String testing() {
		
		return "member/loginForm";
	}
}
