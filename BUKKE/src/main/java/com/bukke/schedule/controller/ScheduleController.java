package com.bukke.schedule.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bukke.bukkeclass.service.BukkeClassService;
import com.bukke.schedule.service.ScheduleService;

public class ScheduleController {

	@Autowired
	private ScheduleService bService;
	
	// 캘린더 전체목록 jsp 이동 (모든회원)
	@RequestMapping(value="")
	public String ScheduleListView() {
		return null;
	}
	// 캘린더 상세정보 jsp 이동 (모든회원)
	@RequestMapping(value="")
	public String ScheduleDetailView() {
		return null;
	}
	
	// 캘린더 등록 jsp 이동 ()
	@RequestMapping(value="")
	public String ScheduleEnrollView() {
		return null;
	}
	
	// *캘린더 삭제기능 메소드
	@RequestMapping(value="")
	public String ScheduleRemove() {
		return null;
	}
	
	
}
