package com.bukke.spring.gift.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bukke.spring.gift.service.GiftService;

@Controller
public class GiftController {
	
	@Autowired
	private GiftService gService;
	
	// 선물하기 전체 보기
	@RequestMapping(value="")
	public String GiftListView() {
		return null;
	}
	
	// 선물하기 상세 보기
	@RequestMapping(value="")
	public String GiftDetailView() {
		return null;
	}
	
	// 선물하기 (등록) jsp 이동 (뷰)
	@RequestMapping(value="")
	public String sendGiftView() {
		return null;
	}
	
	// 선물하기 (등록) 기능 메소드
	@RequestMapping(value="")
	public String sendGift() {
		return null;
	}
	
	// 선물하기 취소(삭제)
	@RequestMapping(value="")
	public String GiftRemove() {
		return null;
	}

}
