package com.bukke.spring.shop.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView shopRegister(HttpServletRequest request,
			@ModelAttribute Shop shop,
			@RequestParam("shopAddr1") String shopAddr1,
			@RequestParam("shopAddr2") String shopAddr2,
			@RequestParam(value = "input-file", required = false) MultipartFile uploadFile,
			ModelAndView mv) {
		// 주소 등록
		String shopAddr = shopAddr1 + "," + shopAddr2;
		shop.setShopAddr(shopAddr);
		// 첨부파일을 서버(workspace폴더)에 저장
		// 첨부파일이 비어있는지 확인
		String origianlFileName = uploadFile.getOriginalFilename();
		if(!origianlFileName.equals("")) {
			String renameFileName = saveFileCRN(uploadFile, request);
			if(renameFileName != null) {
				shop.setCrnOriginalFilename(origianlFileName);
				shop.setCrnRenameFilename(renameFileName);
			}
		}
		int result = sService.registerShop(shop);
		if(result > 0) {
			mv.addObject("msg","회원가입 성공");
			mv.setViewName("redirect:home.com");
		} else {
			mv.addObject("msg","업체 회원가입 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	// 사업자등록증 이미지 저장
	public String saveFileCRN(MultipartFile file, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources/images");
		String savePath = root + "crnImageFiles";
		// 저장 폴더 선택
		File folder = new File(savePath);
		// 파일명 변경하기
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String origianlFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new Date(System.currentTimeMillis()))
		+ origianlFileName.substring(origianlFileName.lastIndexOf("."));
		String filePath = folder + "\\" + renameFileName;
		// 파일 저장
		try {
			file.transferTo(new File(filePath));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return renameFileName;
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