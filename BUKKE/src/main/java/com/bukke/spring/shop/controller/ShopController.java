package com.bukke.spring.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bukke.spring.shop.service.ShopService;

@Controller
public class ShopController {

	@Autowired
	private ShopService sService;
	
	//1.업체 탈퇴시 컬럼을 추가로 만들어서 회원탈퇴 체크
	//2.실제 삭제되지 않음
	
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
	
	// 업체회원 회원가입
	@RequestMapping(value = "shopRegister.com", method = RequestMethod.POST)
	public String shopRegister() {
		return "";
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
