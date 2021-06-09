package com.bukke.spring.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.activity.service.ActivityService;
import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.service.BukkeClassService;
import com.bukke.spring.member.domain.Member;
import com.bukke.spring.member.service.MemberService;

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
	
	@Autowired
	private BukkeClassService bService;

	@Autowired
	private ActivityService aService;

	// 관리자페이지 이동
	@RequestMapping(value = "adminPage.com", method = RequestMethod.GET)
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

	// 일반회원 리스트
	@RequestMapping(value = "adminUserManage.com", method = RequestMethod.GET)
	public String getUserList(Model model) {
		ArrayList<Member> mList = mService.printAllMember();
		if (!mList.isEmpty()) {
			model.addAttribute("mList", mList);
			return "admin/userManage";
		} else {
			model.addAttribute("msg", "일반회원이없습니다");
			return "common/errorPage";
		}
	}

	// 업체회원 리스트
	@RequestMapping(value = "adminShopManage.com", method = RequestMethod.GET)
	public String getShopList(Model model) {
		ArrayList<Shop> sList = sService.printAllShop();
		if (!sList.isEmpty()) {
			model.addAttribute("sList", sList);
			return "admin/shopManage";
		} else {
			model.addAttribute("msg", "업체회원이없습니다");
			return "common/errorPage";
		}
	}

	// 예약 여부
	@ResponseBody
	@RequestMapping(value = "registConfirm.com", method = RequestMethod.GET)
	public void confirmRegister(@RequestParam("shopId") String shopId,
			@RequestParam("shopApproval") String shopApproval, HttpServletResponse response) throws Exception {
		int confirm = 0;
		int reject = 0;

		if (shopApproval.equals("Y")) {
			// 예약상태를 꺼내와서 Y랑 일치하면
			confirm = sService.confirmRegister(shopId);
			// 예약승인 로직으로
		} else {
			reject = sService.cancelRegister(shopId);
			// Y가 아닐 경우에는 예약 거절 로직으로
		}
		HashMap<String, Object> likeMap = new HashMap<String, Object>();
		if (confirm > 0) {
			likeMap.put("resultYn", "success");
			likeMap.put("resultStatus", "Y");
		}
		if (reject > 0) {
			likeMap.put("resultYn", "success");
			likeMap.put("resultStatus", "N");
		}
		new Gson().toJson(likeMap, response.getWriter());
	}


	 // 클래스관리 메뉴
	 @RequestMapping(value="adminbClassManage.com", method=RequestMethod.GET)
	 public String getbClassList(Model model) {
		 ArrayList<BukkeClass> bList = bService.printAllBclass();
			if (!bList.isEmpty()) {
				model.addAttribute("bList", bList);
				return "admin/bClassManage";
			} else {
				model.addAttribute("msg", "등록된 클래스가 없습니다.");
				return "admin/bClassManage"; 
			}
	}
	 
	 // 액티비티관리 메뉴
	 @RequestMapping(value="adminActivityManage.com", method=RequestMethod.GET)
	 public String getActivityList(Model model) { 
		 ArrayList<Activity> aList = aService.printAllActivity();
			if (!aList.isEmpty()) {
				model.addAttribute("aList", aList);
				return "admin/activityManage";
			} else {
				model.addAttribute("msg", "등록된 액티비티가 없습니다.");
				return "admin/activityManage"; 
			}
	}

}