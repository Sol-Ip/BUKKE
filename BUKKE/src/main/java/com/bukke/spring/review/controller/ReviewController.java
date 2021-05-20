package com.bukke.spring.review.controller;


import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bukke.spring.review.domain.Review;
import com.bukke.spring.review.service.ReviewService;



@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService rService;
	
	// 후기 전체 조회
	@RequestMapping(value="reviewList.com", method=RequestMethod.GET)
	public String reviewList(Model model) {
		ArrayList<Review> rList = rService.printAllReview();
	
		if(!rList.isEmpty()) {
			model.addAttribute("rList", rList);
			return "review/reviewListView";
		}else {
			model.addAttribute("msg", "후기 목록조회 실패");
			return "common/errorPage";
		}
		
	}
	
	// 후기 상세 조회
	@RequestMapping(value="reviewDetail.com", method=RequestMethod.GET)
	public String reviewDetail(@RequestParam("reviewNo") int reviewNo, Model model) {
		
		Review review = rService.printOneReview(reviewNo);
		if(review != null) {
			model.addAttribute("review", review);
			return "review/reviewDetailView";
		}else {
			model.addAttribute("msg", "공지사항 상세조회 실패");
			return "common/errorPage";
		}
		
	}
	
	// 후기 검색 기능
	public String reviewSearch() {
		return null;
	}
	
	// 후기 등록 뷰
	@RequestMapping(value="reviewWriteView.com", method=RequestMethod.GET)
	public String reviewEnrollView() {
		return "review/reviewWriteForm";
	}
	
	// 후기 등록 기능
	@RequestMapping(value="reviewAdd.com", method=RequestMethod.POST)
	public ModelAndView reviewRegister(ModelAndView mv, @ModelAttribute Review review,
			@RequestParam(value = "uploadFile", required = false) MultipartFile uploadFile,
			HttpServletRequest request) {
		// 서버에 파일을 저장하는 작업
		if (!uploadFile.getOriginalFilename().equals("")) {
			String renameFileName = saveFile(uploadFile, request);
			if (renameFileName != null) {
				review.setrOriginalFilename(uploadFile.getOriginalFilename());
				review.setrRenameFilename(renameFileName);
			}
		}
		// 디비에 데이터를 저장하는 작업
		int result = 0;
		String path = "";
		result = rService.registerReview(review);
		if (result > 0) {
			path = "redirect:reviewList.com";
		} else {
			mv.addObject("msg", "게시글 등록 실패");
			path = "common/errorPage";
		}
		mv.setViewName(path);
		return mv;
	}

	//후기 파일 저장
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		// 파일 저장 경로 설정
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\reviewFiles";
		// 저장 폴더 선택
		File folder = new File(savePath);
		// 폴더없으면 자동 생성
		if(!folder.exists()) {
			folder.mkdir();
		}
		// 파일명 변경하기
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originalFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new Date(System.currentTimeMillis())) 
								+ "." + originalFileName.substring(originalFileName.lastIndexOf(".")+1);
								// a.bc.jpg
		String filePath = folder + "\\" + renameFileName;
		// 파일저장
		try {
			file.transferTo(new File(filePath));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 리턴
		return renameFileName;
	}
	
	// 후기 수정 뷰
	@RequestMapping(value="reviewModifyView.com")
	public ModelAndView reviewModifyView(ModelAndView mv, @RequestParam("reviewNo") int reviewNo) {

		Review review = rService.printOneReview(reviewNo);
		if (review != null) {
			mv.addObject("review", review).setViewName("review/reviewUpdateView");
		} else {
			mv.addObject("msg", "게시글 상세 조회 실패").setViewName("common/errorPage");
		}

		return mv;
	}
	
	// 후기 수정 기능
	@RequestMapping(value="reviewUpdate.com", method=RequestMethod.POST)
	public ModelAndView reviewUpdate(ModelAndView mv, HttpServletRequest request, @ModelAttribute Review review,
			@RequestParam(value = "reloadFile", required = false) MultipartFile reloadFile) {
			// 파일 삭제 후 업로드 ( 수정 )
		if (reloadFile != null && !reloadFile.isEmpty()) {
				// 기존 파일 삭제
			if (review.getrOriginalFilename() != "") {
				deleteFile(review.getrRenameFilename(), request);
			}
				// 새 파일 업로드
			String renameFileName = saveFile(reloadFile, request);
			if (renameFileName != null) {
				review.setrOriginalFilename(reloadFile.getOriginalFilename());
				review.setrRenameFilename(renameFileName);
			}
		}
			// DB 수정
		int result = rService.modifyReview(review);
		if (result > 0) {
			mv.setViewName("redirect:reviewList.com");
		} else {
			mv.addObject("msg", "게시글 수정 실패").setViewName("common/errorPage");
		}
		return mv;
	}
	public void deleteFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\reviewFiles";
		File file = new File(savePath + "\\" + fileName);
		if(file.exists()) {
			file.delete();
		}
	}
	
	// 후기 삭제 기능
	public String reviewRemove() {
		return null;
	}
	// 댓글 조회 기능
	public String commentList() {
		return null;
	}
	// 댓글 작성 기능
	public String commentWrite() {
		return null;
	}
	// 댓글 수정 기능
	public String commentUpdate() {
		return null;
	}
	// 댓글 삭제 기능
	public String commentRemove() {
		return null;
	}
}
