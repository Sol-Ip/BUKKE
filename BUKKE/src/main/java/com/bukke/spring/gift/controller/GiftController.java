package com.bukke.spring.gift.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bukke.spring.gift.service.GiftService;

@Controller
public class GiftController {
	
	@Autowired
	private GiftService gService;
	
	//선물하기 처음 페이지
	@RequestMapping(value="giftFirstPageView.com", method=RequestMethod.GET)
	public String GiftFirstView() {
		return "gift/giftFirstPickPage";
	}
	//선물하기 처음->클래스 페이지
	@RequestMapping(value="giftBukkeClass.com", method=RequestMethod.GET)
	public String GiftBukkeClassView() {
		return "gift/giftBukkeClass";
	}
	//선물하기 처음->액티비티 페이지
		@RequestMapping(value="giftActivity.com", method=RequestMethod.GET)
		public String GiftActivityView() {
			return "gift/giftActivity";
		}
	// 선물하기 전체 보기
	public String GiftListView() {
		return null;
	}
	
	// 선물하기 상세 보기
	public String GiftDetailView() {
		return null;
	}
	
	// 선물하기 (등록) jsp 이동 (뷰)
	public String sendGiftView() {
		return null;
	}
	
	// 선물하기 (등록) 기능 메소드
	public String sendGift() {
		return null;
	}
	
	// 선물하기 취소(삭제)
	public String GiftRemove() {
		return null;
	}

}
