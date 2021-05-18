package com.bukke.keep.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bukke.keep.service.KeepService;

@Controller
public class KeepController {

	@Autowired
	private KeepService kService;
	
	// 찜목록 jsp이동 (일반회원)
	@RequestMapping(value="")
	public String KeepListView() {
		return null;
	}
	// *찜목록 추가기능 메소드 --클래스
	@RequestMapping(value="")
	public String AddBukkeClasstoKeep() {
		return null;
	}
	// *찜목록 추가기능 메소드 --액티비티
	@RequestMapping(value="")
	public String AddActivitytoKeep() {
		return null;
	}
	// *찜목록 삭제기능 메소드 --클래스
	@RequestMapping(value="")
	public String RemoveBukkeClassfromKeep() {
		return null;
	}
	// *찜목록 삭제기능 메소드 --액티비티
	@RequestMapping(value="")
	public String RemoveActivityfromKeep() {
		return null;
	}
}
