package com.bukke.spring.bukkeclass.controller;


import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.domain.ClassSearch;
import com.bukke.spring.bukkeclass.domain.PageInfo;
import com.bukke.spring.bukkeclass.service.BukkeClassService;
import com.bukke.spring.common.BukkeClassPagination;
import com.bukke.spring.keep.domain.Keep;
import com.bukke.spring.keep.service.KeepService;
import com.bukke.spring.member.domain.Member;
import com.bukke.spring.reservation.domain.Reservation;
import com.bukke.spring.reservation.service.ReservationService;
import com.bukke.spring.review.domain.Review;
import com.bukke.spring.review.service.ReviewService;
import com.bukke.spring.shop.domain.Shop;
import com.google.gson.Gson;
import com.google.gson.JsonIOException;

@Controller
public class BukkeClassController {
	
	@Autowired
	private BukkeClassService bService;
	
	@Autowired
	private ReservationService reService;
	
	@Autowired
	private KeepService kService;
	
	@Autowired
	private ReviewService rService;
	
	// 클래스 전체목록 jsp 이동 (관리자) 
	@RequestMapping(value="bukkeClassList.com", method=RequestMethod.GET)
	public ModelAndView bukkeClassListView(ModelAndView mv,
											@RequestParam(value="page", required=false) Integer page) {
		int currentPage = (page != null) ? page : 1; // page가 null 이 아니면 page 사용 null이면 1
	    int listCount = bService.getListCount();
	    int listCountFlower = bService.getClassFlowerListCount();
	    int listCountArt = bService.getClassArtListCount();
	    int listCountBeauty = bService.getBeautyListCount();
	    int listCountMusic = bService.getMusicListCount();
	    int listCountPhoto = bService.getPhotoListCount();
	    
	    PageInfo pi = BukkeClassPagination.getPageInfo(currentPage, listCount);
	    PageInfo piFlower = BukkeClassPagination.getPageInfo(currentPage, listCount);
	    PageInfo piArt = BukkeClassPagination.getPageInfo(currentPage, listCount);
	    PageInfo piBeauty = BukkeClassPagination.getPageInfo(currentPage, listCount);
	    PageInfo piMusic = BukkeClassPagination.getPageInfo(currentPage, listCount);
	    PageInfo piPhoto = BukkeClassPagination.getPageInfo(currentPage, listCount);
	    
		ArrayList<BukkeClass> bList = bService.printAllBclass(pi);
		ArrayList<BukkeClass> flowerList = bService.printFlowerBclass(piFlower);
		ArrayList<BukkeClass> artList = bService.printArtBclass(piArt);
		ArrayList<BukkeClass> beautyList = bService.printBeautyBclass(piBeauty);
		ArrayList<BukkeClass> musicList = bService.printMusicBclass(piMusic);
		ArrayList<BukkeClass> photoList = bService.printPhotoBclass(piPhoto);
		
		
		if(!bList.isEmpty()) {
			mv.addObject("bList", bList);
			mv.addObject("flowerList", flowerList);
			mv.addObject("artList", artList);
			mv.addObject("beautyList", beautyList);
			mv.addObject("musicList", musicList);
			mv.addObject("photoList", photoList);
			mv.addObject("pi", pi);
			mv.addObject("piFlower", piFlower);
			mv.addObject("piArt", piArt);
			mv.addObject("piBeauty", piBeauty);
			mv.addObject("piMusic", piMusic);
			mv.addObject("piPhoto", piPhoto);
			mv.setViewName("bukkeClass/bukkeClassList");
		}else {
			mv.addObject("msg", "클래스 전체 조회 실패");
	        mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	
	// 클래스 상세정보 jsp 이동
	@RequestMapping(value="bukkeClassDetailView.com", method=RequestMethod.GET)
	public ModelAndView bukkeClassDetailView(ModelAndView mv,
											Model model,
											HttpServletRequest request,
											HttpSession session,
											@RequestParam("classNo") int classNo) {
		Member loginMember = (Member)session.getAttribute("loginMember");
		if(loginMember != null) {
			String memberId = loginMember.getMemberId();
			// 찜하기
			Keep keep = new Keep();
			keep.setClassNo(classNo);
			keep.setMemberId(memberId);
			
			// 예약하기
			Reservation reservation = new Reservation();
			reservation.setClassNo(classNo);
			reservation.setReservationId(memberId);
			
			Reservation classRes = reService.printOneClassReservation(reservation);
			Keep classKeep = kService.printClassKeep(keep);
			
			model.addAttribute("memberId", memberId);
			if(classKeep != null && memberId.equals(classKeep.getMemberId())) {
				keep.setKeepStatus("Y");
			}else {
				keep.setKeepStatus("N");
			}
			
			model.addAttribute("keep", classKeep);
			model.addAttribute("reservation", classRes);
		}
		BukkeClass bukkeClass = bService.printOneBclass(classNo);
		ArrayList<BukkeClass> bList = bService.printTopThreeBclass();
//		int getActKeeps = kService.getClassKeep(classNo);
		ArrayList<Review> rList = rService.printReviewToBclass(classNo);
		
		if(bukkeClass != null && !bList.isEmpty()) {
//			model.addAttribute("getClassKeeps", getClassKeeps);
			mv.addObject("bukkeClass", bukkeClass);
			mv.addObject("bList", bList);
			mv.addObject("rList", rList);
			System.out.println(rList);
			mv.setViewName("bukkeClass/bukkeClassDetailView");
		} else {
			mv.addObject("msg", "클래스 상세 조회 실패 !").setViewName("common/errorPage");
		}
		return mv;
	}
	
	// *클래스 검색기능 메소드
	@RequestMapping(value="bukkeClassSearch.com", method=RequestMethod.GET)
	public String bukkeClassSearch(@ModelAttribute ClassSearch search, Model model) {
		ArrayList<BukkeClass> bSearchList = bService.searchBclass(search);
		if(!bSearchList.isEmpty()) {
			model.addAttribute("bList", bSearchList);
			model.addAttribute("search", search);
			return "bukkeClass/bukkeClassList";
		}else {
			model.addAttribute("msg", "클래스 검색 실패");
			return "common/errorPage";
		}
	}
	
	// 클래스 등록 jsp 이동 (업체회원)
	@RequestMapping(value="bukkeClassWriteForm.com", method=RequestMethod.GET)
	public String bukkeClassEnrollView() {
		return "bukkeClass/bukkeClassWriteForm";
	}
	
	// *클래스 등록기능 메소드
	@RequestMapping(value="bukkeClassRegister.com", method=RequestMethod.POST)
	public ModelAndView bukkeClassAdd(ModelAndView mv,
										@ModelAttribute BukkeClass bukkeClass,
										@RequestParam("classAddr1") String classAddr1,
										@RequestParam("classAddr2") String classAddr2,
										HttpSession session,
										@RequestParam(value="uploadFile", required=false) MultipartFile uploadFile,
										HttpServletRequest request) {
		// 서버에 파일 저장
		// MultipartFile : 파일 업로드 처리(스프링에서 제공하는 인터페이스)
		if(!uploadFile.getOriginalFilename().equals("")) {
			String cRenameFilename = saveFile(uploadFile, request);
			// 파일 이름 바꿔주고 지정한 경로에 저장
			if(cRenameFilename != null) {
				// 오리지널 파일 명과 새로운 파일 명 set
				bukkeClass.setcOriginalFilename(uploadFile.getOriginalFilename());
				bukkeClass.setcRenameFilename(cRenameFilename);
			}
		}
		// DB에 데이터 저장
		int result = 0;
		String cPath = "";
		Shop loginShopper = (Shop)session.getAttribute("loginShopper");
		String shopId = loginShopper.getShopId();
		
		bukkeClass.setClassAddr(classAddr1 + ","+ classAddr2);
		result = bService.registerBclass(bukkeClass);
		if(result > 0) {
			cPath = "redirect:bukkeClassList.com";
		}else {
			mv.addObject("msg", "클래스 등록 실패");
			cPath = "common/errorPage";
		}
		mv.setViewName(cPath);
		return mv;
	}
	
	// 파일 저장 경로 설정
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		// 수정 또는 새롭게 추가된 파일이 저장될 경로 얻어서 최종적으로 savePath에 담아 줌
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\bClassFiles";
		// 저장 폴더 선택
		File folder = new File(savePath);
		if(!folder.exists()) {
			folder.mkdir();
		}
		// 파일명 변경하기
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String cOriginalFilename = file.getOriginalFilename();
		
		String cRenameFilename = sdf.format(new Date(System.currentTimeMillis()))
				+ "." + cOriginalFilename.substring(cOriginalFilename.lastIndexOf(".")+1);
		String filePath = folder + "\\" + cRenameFilename;
		// 파일 저장
		try {
			file.transferTo(new File(filePath));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return cRenameFilename;
	}
	
	
	// 클래스 수정 jsp 이동 (업체회원)
	@RequestMapping(value="bukkeClassModify.com", method=RequestMethod.GET)
	public ModelAndView bukkeClassModifyView(ModelAndView mv, @RequestParam("classNo") int classNo) {
		BukkeClass bukkeClass = bService.printOneBclass(classNo);
		if(bukkeClass != null) {
			mv.addObject("bukkeClass", bukkeClass).setViewName("bukkeClass/bukkeClassUpdateView");
		} else {
			mv.addObject("msg", "부캐 클래스 수정 실패").setViewName("common/errorPage");
		}
		return mv;
	}
	
	// *클래스 수정기능 메소드
	@RequestMapping(value="bukkeClassUpdate.com", method=RequestMethod.POST)
	public ModelAndView bukkeClassUpdate(ModelAndView mv, 
										HttpServletRequest request,
										@ModelAttribute BukkeClass bClass,
										@RequestParam("classAddr1") String classAddr1,
										@RequestParam("classAddr2") String classAddr2,
										@RequestParam(value="reloadFile", required=false) MultipartFile reloadFile) {
		// 파일 삭제 후 업로드 (수정)
		if(reloadFile != null && !reloadFile.isEmpty()) {
			// 기존 파일 삭제
			if(bClass.getcOriginalFilename() != "") {
				deleteFile(bClass.getcRenameFilename(), request);
			}
			// 새 파일 업로드
			String cRenameFileName = saveFile(reloadFile, request);
			if(cRenameFileName != null) {
				bClass.setcOriginalFilename(reloadFile.getOriginalFilename());
				bClass.setcRenameFilename(cRenameFileName);
			}
		}
		// DB 수정
		int result = bService.modifyBclass(bClass);
		bClass.setClassAddr(classAddr1 + ","+ classAddr2);
		if(result > 0) {
			mv.setViewName("redirect:bukkeClassList.com");
		}else  {
			mv.addObject("msg", "부캐 클래스 수정 실패").setViewName("common/errorPage");
		}
		return mv;
	}
	
	// 파일 삭제
	private void deleteFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\bClassFiles";
		File file = new File(savePath + "\\" + fileName);
		if(file.exists()) {
			file.delete();
		}
	}
	
	// *클래스 삭제기능 메소드
	@RequestMapping(value="bukkeClassDelete.com", method=RequestMethod.GET)
	public String bukkeClassRemove(Model model,
									@RequestParam("classNo") int classNo,
									@RequestParam("cRenameFilename") String cRenameFilename,
									HttpServletRequest request) {
		// 업로드 된 파일 삭제
		if(cRenameFilename != "") {
			deleteFile(cRenameFilename, request);
		}
		// DB에 데이터 업데이트
		int result = bService.removeBclass(classNo);
		if(result > 0) {
			return "redirect:bukkeClassList.com";
		}else {
			model.addAttribute("msg", "부캐 클래스 삭제 실패");
			return "common/errorPage";
		}
	}
	
	
}
