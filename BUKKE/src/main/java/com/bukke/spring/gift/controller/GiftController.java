package com.bukke.spring.gift.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.service.BukkeClassService;
import com.bukke.spring.common.ReviewPagination;
import com.bukke.spring.gift.service.GiftService;
import com.bukke.spring.review.domain.ReviewPageInfo;

@Controller
public class GiftController {
	
	@Autowired
	private GiftService gService;
	
	@Autowired
	private BukkeClassService bService;
	
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

	// 선물하기 처음->액티비티 페이지
	@RequestMapping(value = "giftActivity.com", method = RequestMethod.GET)
	public String GiftActivityView() {
		return "gift/giftActivity";
	}

	@RequestMapping(value = "giftType.com", method = RequestMethod.GET)
	public String GiftType(@RequestParam("classType") String classType, Model model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		if(classType.equals("플라워")) {
			return "gift/giftFlowerView";	
		}
		else if(classType.equals("미술")){
			return "gift/giftArtView";
		}else if(classType.equals("뷰티")){
			return "gift/giftBeautyView";
		}else if(classType.equals("음악")){
			return "gift/giftMusicView";
		}else if(classType.equals("사진")){
			return "gift/giftPhotoView";
		}			
		else {
			return "common/errorPage";
		}
		
		

	}
	
	
	  //선물 리스트 by 상세+ 상세분류
	  
	  @RequestMapping(value = "giftList.com", method = RequestMethod.GET) public
	  String GiftList(@RequestParam("classType") String classType,
	  
	  @RequestParam("classTypedetails") String classTypedetails, Model model,
	  HttpServletRequest request, HttpServletResponse response, HttpSession
	  session) {
	  
	  BukkeClass bukkeClass = new BukkeClass(); bukkeClass.setClassType(classType);
	  bukkeClass.setClassTypedetails(classTypedetails);
	  
	  ArrayList<BukkeClass> bList = bService.printGiftBclass(bukkeClass);
	  
	  System.out.println("bList "+ bList.toString());
	  
	  model.addAttribute("bList",bList);
	  
	  
	  if(!bList.isEmpty()) {
		  return "gift/giftListView";   
	  }
	  else {
		  model.addAttribute("msg","해당 항목이 없습니다");
		  return "common/errorPage";
	  }
	  
	  
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
