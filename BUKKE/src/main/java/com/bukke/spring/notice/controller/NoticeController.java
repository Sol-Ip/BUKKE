package com.bukke.spring.notice.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bukke.spring.notice.domain.Notice;
import com.bukke.spring.notice.service.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService nService;

	//전체목록 조회(리스트)
	@RequestMapping(value="noticeList.com" , method = RequestMethod.GET)
	public String NoticeListView(Model model) {
		ArrayList<Notice> nList = nService.printAllNotice();
		if(!nList.isEmpty()) {
			model.addAttribute("nList",nList);
			return "notice/noticeListView";
		}else {
			model.addAttribute("msg","공지사항 조회 실패");
			return "common/errorPage";
		}
	//	return "notice/noticeListView";
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
