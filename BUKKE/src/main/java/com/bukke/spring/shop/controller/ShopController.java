package com.bukke.spring.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bukke.spring.shop.domain.Shop;
import com.bukke.spring.shop.service.ShopService;

@Controller
public class ShopController {

	@Autowired
	private ShopService sService;
	
	// 업체회원 로그인(ajax)
	@ResponseBody
	@RequestMapping(value = "shopLogin.com", method = RequestMethod.POST)
	public String shopLogin() {
		return "";
	}
	
	// 업체회원 로그아웃
	public String shopLogout() {
		return "";
	}
	
	// 업체회원 회원가입(jsp)
	@RequestMapping(value = "shopRegisterForm.com", method = RequestMethod.GET)
	public String enrollView() {
		return "shop/shopRegister";
	}

	@RequestMapping(value = "shopRegister.com", method = RequestMethod.POST)
	public String shopRegister(
			@ModelAttribute Shop shop, @RequestParam("shopAddr1") String shopAddr1,
			@RequestParam("shopAddr2") String shopAddr2, Model model) {
		String shopAddr = shopAddr1 + "," + shopAddr2;
		shop.setShopAddr(shopAddr);
		int result = sService.registerShop(shop);
		if(result > 0) {
			model.addAttribute("msg","회원가입 성공");
			return "redirect:home.com";
		} else {
			model.addAttribute("msg","업체 회원가입 실패");
			return "common/errorPage";
		}
	}
	
	// 사업자등록증 이미지 저장
	public String saveFileCRN() {
		return "";
	}
	
	// 업체회원 마이페이지 연결
	public String shopInfoView() {
		return "";
	}
	
	public String modifyShop() {
		return "";
	}
	
	public String shopRegisterConfirm() {
		return "";
	}
	
	public String shopDelete() {
		return "";
	}

	public String idDuplicateCheck() {
		return "";
	}
}
