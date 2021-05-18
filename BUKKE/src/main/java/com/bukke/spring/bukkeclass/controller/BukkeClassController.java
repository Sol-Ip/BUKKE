package com.bukke.spring.bukkeclass.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bukke.spring.bukkeclass.service.BukkeClassService;

@Controller
public class BukkeClassController {
	
	@Autowired
	private BukkeClassService bService;
	
	// 클래스 전체목록 jsp 이동 (관리자)
	@RequestMapping(value="")
	public String bukkeClassListView() {
		return null;
	}
	// 클래스 상세정보 jsp 이동 (모든회원)
	@RequestMapping(value="")
	public String bukkeClassDetailView() {
		return null;
	}
	// *클래스 검색기능 메소드
	@RequestMapping(value="")
	public String bukkeClassSearch() {
		return null;
	}
	// 클래스 등록 jsp 이동 (업체회원)
	@RequestMapping(value="")
	public String bukkeClassEnrollView() {
		return null;
	}
	// *클래스 등록기능 메소드
	@RequestMapping(value="")
	public String bukkeClassAdd() {
		return null;
	}
	// 클래스 수정 jsp 이동 (업체회원)
	@RequestMapping(value="")
	public String bukkeClassModifyView() {
		return null;
	}
	// *클래스 수정기능 메소드
	@RequestMapping(value="")
	public String bukkeClassUpdate() {
		return null;
	}
	// *클래스 삭제기능 메소드
	@RequestMapping(value="")
	public String bukkeClassRemove() {
		return null;
	}
}
