package com.bukke.spring.notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bukke.spring.notice.service.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService bService;

	//전체목록 조회(리스트)
	@RequestMapping(value="")
	public String NoticeListView() {
		return null;
	}
	
	//상세정보 조회(detail)
	@RequestMapping(value="")
	public String NoticeDetailView() {
		return null;
	}
	
	//공지사항 등록
	@RequestMapping(value="")
	public String NoticeEnrollView() {
		return null;
	}
	
	//공지사항 수정
	@RequestMapping(value="")
	public String BukkeClassUpdate() {
		return null;
	}
	
	//공지사항 수정 view
	@RequestMapping(value="")
	public String NoticeModifyView() {
		return null;
	}
	
	//공지사항 삭제
	@RequestMapping(value="")
	public String BukkeClassRemove() {
		return null;
	}
	
}
