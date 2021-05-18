package com.bukke.spring.keep.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bukke.spring.keep.service.KeepService;

@Controller
public class KeepController {

	@Autowired
	private KeepService kService;
	
	// 찜목록 jsp이동 (일반회원)
	public String KeepListView() {
		return null;
	}
	// *찜목록 추가기능 메소드 --클래스
	public String AddBukkeClasstoKeep() {
		return null;
	}
	// *찜목록 추가기능 메소드 --액티비티
	public String AddActivitytoKeep() {
		return null;
	}
	// *찜목록 삭제기능 메소드 --클래스
	public String RemoveBukkeClassfromKeep() {
		return null;
	}
	// *찜목록 삭제기능 메소드 --액티비티
	public String RemoveActivityfromKeep() {
		return null;
	}
}
