package com.bukke.spring.notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bukke.spring.notice.service.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService bService;

	//전체목록 조회(리스트)
	@RequestMapping(value="noticeList.com" , method = RequestMethod.GET)
	public String NoticeListView(Model model) {
		return "notice/noticeListView";
	}
	
	//상세정보 조회(detail)
	public String NoticeDetailView() {
		return null;
	}
	
	//공지사항 등록
	public String NoticeEnrollView() {
		return null;
	}
	
	//공지사항 수정
	public String BukkeClassUpdate() {
		return null;
	}
	
	//공지사항 수정 view
	public String NoticeModifyView() {
		return null;
	}
	
	//공지사항 삭제
	public String BukkeClassRemove() {
		return null;
	}
	
}
