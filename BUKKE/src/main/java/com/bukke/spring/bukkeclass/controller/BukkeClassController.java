package com.bukke.spring.bukkeclass.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.domain.PageInfo;
import com.bukke.spring.bukkeclass.service.BukkeClassService;
import com.bukke.spring.common.Pagination;

@Controller
public class BukkeClassController {
	
	@Autowired
	private BukkeClassService bService;
	
	// 클래스 전체목록 jsp 이동 (관리자)
	@RequestMapping(value="bukkeClassList.com", method=RequestMethod.GET)
	public ModelAndView bukkeClassListView(ModelAndView mv,
											@RequestParam(value="page", required=false) Integer page) {
		int currentPage = (page != null) ? page : 1; // page가 null 이 아니면 page 사용 null이면 1
	    int listCount = bService.getListCount();
	    PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
	    
		ArrayList<BukkeClass> bList = bService.printAllBclass(pi);
		if(!bList.isEmpty()) {
			mv.addObject("bList", bList);
			mv.addObject("pi", pi);
			mv.addObject("bukkeClass/bukkClassList");
		}else {
			mv.addObject("msg", "클래스 전체 조회 실패");
	        mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	
	// 클래스 상세정보 jsp 이동 (모든회원)
	public String bukkeClassDetailView() {
		return null;
	}
	// *클래스 검색기능 메소드
	public String bukkeClassSearch() {
		return null;
	}
	// 클래스 등록 jsp 이동 (업체회원)
	public String bukkeClassEnrollView() {
		return null;
	}
	// *클래스 등록기능 메소드
	public String bukkeClassAdd() {
		return null;
	}
	// 클래스 수정 jsp 이동 (업체회원)
	public String bukkeClassModifyView() {
		return null;
	}
	// *클래스 수정기능 메소드
	public String bukkeClassUpdate() {
		return null;
	}
	// *클래스 삭제기능 메소드
	public String bukkeClassRemove() {
		return null;
	}
}
