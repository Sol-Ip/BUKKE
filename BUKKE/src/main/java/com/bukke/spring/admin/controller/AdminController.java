package com.bukke.spring.admin.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bukke.spring.common.ReviewPagination;
import com.bukke.spring.member.domain.Member;
import com.bukke.spring.member.service.MemberService;
import com.bukke.spring.review.domain.Review;
import com.bukke.spring.review.domain.ReviewComment;
import com.bukke.spring.review.domain.ReviewPageInfo;
import com.bukke.spring.shop.domain.Shop;
import com.bukke.spring.shop.service.ShopService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class AdminController {
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	private ShopService sService;

	// 관리자페이지 이동
	@RequestMapping(value="adminPage.com", method=RequestMethod.GET)
	public String adminPage() {
		return "admin/index";
	}

	/*
	 * // 업체회원관리 메뉴
	 * 
	 * @RequestMapping(value="adminShopManage.com", method=RequestMethod.GET) public
	 * String adminshopManage() { return "admin/shopManage"; }
	 */
	
	/*
	 * // 일반회원관리 메뉴
	 * 
	 * @RequestMapping(value="adminUserManage.com", method=RequestMethod.GET) public
	 * String adminuserManage() { return "admin/userManage"; }
	 */
	
	//일반회원 리스트
	@RequestMapping(value="adminUserManage.com", method=RequestMethod.GET)
	public String getUserList(Model model) {
		ArrayList<Member> mList = mService.printAllMember();
		if(!mList.isEmpty()) {
			model.addAttribute("mList",mList);
			return "admin/userManage";
		}else {
			model.addAttribute("msg", "일반회원이없습니다");
			return "common/errorPage";
		}
	}
	
	//업체회원 리스트
	@RequestMapping(value="adminShopManage.com", method=RequestMethod.GET)
	public String getShopList(Model model) {
		ArrayList<Shop> sList = sService.printAllShop();
		if(!sList.isEmpty()) {
			model.addAttribute("sList",sList);
			System.out.println(sList.toString());
			return "admin/shopManage";
		}else {
			model.addAttribute("msg", "업체회원이없습니다");
			return "common/errorPage";
		}
	}
}