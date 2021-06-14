package com.bukke.spring.shop.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.activity.service.ActivityService;
import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.service.BukkeClassService;
import com.bukke.spring.common.ReviewPagination;
import com.bukke.spring.common.ShopPagination;
import com.bukke.spring.member.domain.Member;
import com.bukke.spring.reservation.domain.Reservation;
import com.bukke.spring.reservation.service.ReservationService;
import com.bukke.spring.review.domain.ReviewComment;
import com.bukke.spring.review.domain.ReviewPageInfo;
import com.bukke.spring.review.service.ReviewService;
import com.bukke.spring.shop.domain.Shop;
import com.bukke.spring.shop.service.ShopService;

@Controller
public class ShopController {

	@Autowired
	private ShopService sService;
	
	@Autowired
	private BukkeClassService cService;
	
	@Autowired
	private ActivityService aService;
	
	@Autowired
	private ReservationService reService;
	
	@Autowired
	private ReviewService rService; 
	
	// 업체회원 로그인(ajax)
	@ResponseBody
	@RequestMapping(value = "shopLogin.com", method = RequestMethod.POST)
	public String shopLogin(
			HttpServletRequest request, @ModelAttribute Shop shop) {
		Shop loginShopper = sService.loginShop(shop);
		if(loginShopper != null) {
			if(loginShopper.getShopRm().equals("N")) {
				HttpSession session = request.getSession();
				session.setAttribute("loginShopper", loginShopper);
				if(loginShopper.getShopApproval().equals("Y")) {
					return "success"; // 로그인 성공
				} else {
					// 관리자 승인여부와 상관없이 일단 로그인은 허용
					return "no_approval"; // 로그인 성공?
				}
			}
			return "removed"; // 로그인 실패
		} else {
			return "fail"; // 로그인 실패
		}
	}
	
	// 업체회원 로그아웃
	@RequestMapping(value = "shopLogout.com", method = RequestMethod.GET)
	public String shopLogout(
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:home.com";
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
			@RequestParam(value = "input-file") MultipartFile uploadFile,
			ModelAndView mv
			) {
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
			mv.addObject("msg", "shopmember");
			mv.setViewName("member/registerComplete");
		} else {
			mv.setViewName("redirect:home.com");
		}
		return mv;
	}
	
	// 사업자등록증 이미지 저장
	public String saveFileCRN(MultipartFile file, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources/images");
		String savePath = root + "crnImageFiles";
		// 저장 폴더 선택
		File folder = new File(savePath);
		// 폴더없으면 자동 생성
		if(!folder.exists()) {
			folder.mkdir();
		}
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
	
	// 업체회원 마이페이지 메인 화면
	@RequestMapping(value="shopMypage.com")
	public ModelAndView shopInfoView(ModelAndView mv,Model model,HttpSession session) {
		
		Shop loginShopper = (Shop) session.getAttribute("loginShopper");
		String shopId = loginShopper.getShopId();
		
		int cCount = cService.getListCountShopId(shopId);
		int aCount = aService.getListCountShop(shopId);
		int reTotalCount = reService.getreTotalCount(shopId);
		int reWaitCount = reService.getreWaitCount(shopId);
		mv.addObject("cCount", cCount );
		mv.addObject("aCount", aCount);
		mv.addObject("reTotalCount", reTotalCount);
		mv.addObject("reWaitCount", reTotalCount);
		mv.setViewName("shop/shopMypage");
		
		return mv;
	}
	
	@RequestMapping(value = "shopModifyView.com", method = RequestMethod.GET)
	public String shopModifyView() {
		return "shop/shopModify";
	}
	
	@RequestMapping(value = "modifyShop.com", method = RequestMethod.POST)
	public ModelAndView shopModify(HttpServletRequest request,
			@ModelAttribute Shop shop,
			@RequestParam("shopAddr1") String shopAddr1,
			@RequestParam("shopAddr2") String shopAddr2,
			@RequestParam(value = "input-file") MultipartFile uploadFile,
			HttpSession session,
			ModelAndView mv
			) {
		
		
		String shopAddr = shopAddr1 + "," + shopAddr2;
		shop.setShopAddr(shopAddr);
		//이미지처리
		String origianlFileName = uploadFile.getOriginalFilename();
		if(!origianlFileName.equals("")) {
			String renameFileName = saveFileCRN(uploadFile, request);
			if(renameFileName != null) {
				shop.setCrnOriginalFilename(origianlFileName);
				shop.setCrnRenameFilename(renameFileName);
			}
			// 여기서 loginShopper는 변경하기 전 정보, 즉 사진 변경이 안 됬을 경우 원래 정보를 db에 돌려놓음
			Shop loginShopper = (Shop) session.getAttribute("loginShopper");
			shop.setCrnOriginalFilename(loginShopper.getCrnOriginalFilename());
			shop.setCrnRenameFilename(loginShopper.getCrnRenameFilename());
		}
		// 변경된 정보로 세션 업데이트
		session.setAttribute("loginShopper", shop);
		int result = sService.modifyShop(shop);
		if(result > 0) {
			mv.addObject("msg","success");
			mv.setViewName("member/ModifyComplete");
		} else {
			mv.setViewName("redirect:home.com");
		}
		
		
		
		return mv;
	}
	
	// 업체회원 승인여부는 admincotroller에 있음
		public String shopRegisterConfirm() {
		return "";
	}
	
	@RequestMapping(value = "shopDeleteView.com")
	public String shopDeleteView() {
		return "shop/shopDelete";
	}
	
	//업체회원 탈퇴
	@RequestMapping(value = "shopDelete.com")	
	public ModelAndView shopDelete(HttpSession session,
			ModelAndView mv) {
		// 회원 id를 가져옴
		Shop loginShopper = (Shop) session.getAttribute("loginShopper");
		String shopId = loginShopper.getShopId();
		int result = sService.deleteShop(shopId);
		if (result > 0) {
			mv.addObject("msg", "success");
			// 회원탈퇴에 성공시, 세션 삭제
			session.invalidate();
			mv.setViewName("member/memberDeleteComplete");
		} else {
			mv.addObject("msg", "fail");
			mv.setViewName("redirect:shopMypage.com");
		}
		return mv;
	}

//	public String idDuplicateCheck() {
//		return "";
//	}
	
		// 업체 회원 클래스 목록
		@RequestMapping(value="shopClassList.com")
		public ModelAndView shopClassListView(ModelAndView mv,@RequestParam(value = "page", required = false) Integer page,HttpSession session) {
			Shop loginShopper = (Shop) session.getAttribute("loginShopper");
			String shopId = loginShopper.getShopId();
			int currentPage = (page != null) ? page : 1;
			
			int listCount = cService.getListCountShopId(shopId);
			ShopPageInfo shopPi = ShopPagination.getPageInfo(currentPage,listCount);
			ArrayList<BukkeClass> bList = cService.printAllbClassByShop(shopPi, shopId);

			if(!bList.isEmpty()) {
				 mv.addObject("bList",bList);
				 mv.addObject("shopPi",shopPi);
				 mv.setViewName("shop/bukkeClassList");
			 }else {
				 mv.addObject("shop/bukkeClassList");
				 
			 }
			return mv;
		}
		
		// 업체 회원 액티비티 목록
		@RequestMapping(value="shopActivityList.com")
		public ModelAndView shopActivityListView(ModelAndView mv ,@RequestParam(value = "page", required = false) Integer page,HttpSession session) {
			Shop loginShopper = (Shop) session.getAttribute("loginShopper");
			String shopId = loginShopper.getShopId();
			int currentPage = (page != null) ? page : 1;
			
			int listCount = cService.getListCountShopId(shopId);
			ShopPageInfo shopPi = ShopPagination.getPageInfo(currentPage,listCount);
			ArrayList<Activity> aList = aService.printAllActivityByShop(shopPi, shopId);
			if(!aList.isEmpty()) {
				mv.addObject("aList", aList);
				mv.addObject("shopPi", shopPi);
				mv.setViewName("shop/activityList");
			}else {
				mv.setViewName("shop/activityList");
			}
			return mv;
		}
		
		// 업체 회원 마이페이지 수업 스케쥴
		@RequestMapping(value="shopSchedule.com")
		public String shopScheduleView() {
			return "shop/shopSchedule";
		}
		
		
}