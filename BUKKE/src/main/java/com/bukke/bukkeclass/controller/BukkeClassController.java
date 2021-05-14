package com.bukke.bukkeclass.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class BukkeClassController {
	// 클래스 전체목록 jsp 이동 (관리자)
	@RequestMapping(value="")
	public String BukkeClassListView() {
		return null;
	}
	// 클래스 상세정보 jsp 이동 (모든회원)
	@RequestMapping(value="")
	public String BukkeClassDetailView() {
		return null;
	}
	// *클래스 검색기능 메소드
	@RequestMapping(value="")
	public String BukkeClassSearch() {
		return null;
	}
	// 클래스 등록 jsp 이동 (업체회원)
	@RequestMapping(value="")
	public String BukkeClassEnrollView() {
		return null;
	}
	// *클래스 등록기능 메소드
	@RequestMapping(value="")
	public String BukkeClassAdd() {
		return null;
	}
	// 클래스 수정 jsp 이동 (업체회원)
	@RequestMapping(value="")
	public String BukkeClassModifyView() {
		return null;
	}
	// *클래스 수정기능 메소드
	@RequestMapping(value="")
	public String BukkeClassUpdate() {
		return null;
	}
	// *클래스 삭제기능 메소드
	@RequestMapping(value="")
	public String BukkeClassRemove() {
		return null;
	}
}
