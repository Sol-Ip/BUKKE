package com.bukke.spring.review.controller;


import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;

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

import com.bukke.spring.common.ReviewPagination;
import com.bukke.spring.member.domain.Member;
import com.bukke.spring.review.domain.Review;
import com.bukke.spring.review.domain.ReviewComment;
import com.bukke.spring.review.domain.ReviewLikes;
import com.bukke.spring.review.domain.ReviewPageInfo;
import com.bukke.spring.review.domain.ReviewSearch;
import com.bukke.spring.review.service.ReviewService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;



@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService rService;
	
	//후기 리스트 페이지
	@RequestMapping(value="reviewList.com", method=RequestMethod.GET)
	public ModelAndView reviewListView(ModelAndView mv
			,@RequestParam(value="page", required=false) Integer page) {
		int currentPage = (page != null) ? page : 1;
		int listCount = rService.getListCount();
		
		//후기 전체리스트
		ReviewPageInfo pi = ReviewPagination.getPageInfo(currentPage, listCount);
		ArrayList<Review> rList = rService.printAllReview(pi);
		
		//좋아요 많은순 리스트 탑3개뽑기
		ArrayList<Review> rListTopLikes = rService.printTopLikesReview();
		
		if(!rList.isEmpty()) {
			mv.addObject("rList", rList);
			mv.addObject("pi", pi);
			mv.addObject("rListTopLikes", rListTopLikes);
			mv.setViewName("review/reviewListView");
			
		}else {
			mv.addObject("msg", "리스트가 없습니다");
			mv.setViewName("common/errorPage");
			
		}
		return mv;
		
	}
	
	//후기 상세 디테일
	@RequestMapping(value="reviewDetail.com", method=RequestMethod.GET)
	public String reviewDetail(@RequestParam("reviewNo") int reviewNo,  Model model, HttpServletRequest request,HttpServletResponse response, HttpSession session) {
		Review review = rService.printOneReview(reviewNo);
		Member loginMember = (Member)session.getAttribute("loginMember");
		if(loginMember != null) {
			String memberId = loginMember.getMemberId();
			ReviewLikes rvLike = new ReviewLikes();
			rvLike.setReviewNo(reviewNo);
			rvLike.setMemberId(memberId);
			ReviewLikes reviewLikes = rService.printReviewLikes(rvLike);
			model.addAttribute("memberId",memberId);
			if(loginMember !=null) {
				String heartYN = "";
				if(reviewLikes != null && memberId.equals(reviewLikes.getMemberId())) {
					heartYN = "Y";
					System.out.println("heartYN : "+ heartYN);
					model.addAttribute("heartYN",heartYN);
				}else {
					 heartYN = "N";
					 System.out.println("heartYN : "+ heartYN); 
					 model.addAttribute("heartYN", heartYN); 
				}
		}
			
		    int rLikes = rService.getReviewLike(reviewNo);
		    model.addAttribute("heart",rLikes);
		    System.out.println("좋아요몇개? "+ rLikes);
		}
	    
		
		if(review != null) {
			model.addAttribute("review", review);
			return "review/reviewDetailView";
		}else {
			model.addAttribute("msg", "후기가 없습니다");
			return "common/errorPage";
		}
		
	}
	
	//후기 검색
	@RequestMapping(value="reviewSearch.com", method=RequestMethod.GET)
	public String reviewSearch(@ModelAttribute ReviewSearch search, Model model) {
		
		
		ArrayList<Review> searchList = rService.searchReview(search);
		if(!searchList.isEmpty()) {
			model.addAttribute("rList", searchList);
			model.addAttribute("search", search);
			return "review/reviewListView";
		}else {
			model.addAttribute("msg", "검색결과가 없습니다.");
			return "common/errorPage";
		}
	}

	//후기 작성
	@RequestMapping(value="reviewWriteView.com", method=RequestMethod.GET)
	public String reviewEnrollView(@RequestParam("activityNo") int activityNo,@RequestParam("classNo") int classNo, Model model) {
			model.addAttribute("activityNo",activityNo);
			model.addAttribute("classNo",classNo);
		return "review/reviewWriteForm";
	}
	
	
	@RequestMapping(value="reviewAdd.com", method=RequestMethod.POST)
	public ModelAndView reviewRegister(ModelAndView mv, @ModelAttribute Review review,
			@RequestParam(value = "uploadFile", required = false) MultipartFile uploadFile,
			HttpServletRequest request) {
		
		if (!uploadFile.getOriginalFilename().equals("")) {
			String renameFileName = saveFile(uploadFile, request);
			if (renameFileName != null) {
				review.setrOriginalFilename(uploadFile.getOriginalFilename());
				review.setrRenameFilename(renameFileName);
			}
		}
		
		int result = 0;
		String path = "";
		result = rService.registerReview(review);
		if (result > 0) {
			path = "redirect:reviewList.com";
		} else {
			mv.addObject("msg", "후기작성이 완료되지 않았습니다.");
			path = "common/errorPage";
		}
		mv.setViewName(path);
		return mv;
	}

	//파일저장
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\reviewFiles";
		File folder = new File(savePath);
		if(!folder.exists()) {
			folder.mkdir();
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originalFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new Date(System.currentTimeMillis())) 
								+ "." + originalFileName.substring(originalFileName.lastIndexOf(".")+1);
								
		String filePath = folder + "\\" + renameFileName;
		try {
			file.transferTo(new File(filePath));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return renameFileName;
	}
	
	//후기 수정 페이지
	@RequestMapping(value="reviewModifyView.com")
	public ModelAndView reviewModifyView(ModelAndView mv, @RequestParam("reviewNo") int reviewNo) {

		Review review = rService.printOneReview(reviewNo);
		if (review != null) {
			mv.addObject("review", review).setViewName("review/reviewUpdateView");
		} else {
			mv.addObject("msg", "잘못된 경로입니다").setViewName("common/errorPage");
		}

		return mv;
	}
	
	//후기 수정 기능
	@RequestMapping(value="reviewUpdate.com", method=RequestMethod.POST)
	public ModelAndView reviewUpdate(ModelAndView mv, HttpServletRequest request, @ModelAttribute Review review,
			@RequestParam(value = "reloadFile", required = false) MultipartFile reloadFile) {
			
		if (reloadFile != null && !reloadFile.isEmpty()) {
				
			if (review.getrOriginalFilename() != "") {
				deleteFile(review.getrRenameFilename(), request);
			}
			
			String renameFileName = saveFile(reloadFile, request);
			if (renameFileName != null) {
				review.setrOriginalFilename(reloadFile.getOriginalFilename());
				review.setrRenameFilename(renameFileName);
			}
		}
			
		int result = rService.modifyReview(review);
		if (result > 0) {
			mv.setViewName("redirect:reviewList.com");
		} else {
			mv.addObject("msg", "잘못된 경로 입니다").setViewName("common/errorPage");
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
	
	//후기 삭제
	@RequestMapping(value = "reviewDelete.com", method = RequestMethod.GET)
	public String reviewDelete(Model model, @RequestParam("reviewNo") int reviewNo,
			@RequestParam("rRenameFilename") String rRenameFilename, HttpServletRequest request) {
		
		if (rRenameFilename != "") {
			deleteFile(rRenameFilename, request);
		}

		int result = rService.removeReview(reviewNo);
		if (result > 0) {
			return "redirect:reviewList.com";
		} else {
			model.addAttribute("msg", "잘못된 경로입니다");
			return "common/errorPage";
		}
	}
		
	//댓글작성
	@ResponseBody
	@RequestMapping(value="addComment.com", method=RequestMethod.POST)
	public String addComment(@ModelAttribute ReviewComment rComment, HttpSession session) {
		Member loginMember = (Member)session.getAttribute("loginMember");
		rComment.setMemberId(loginMember.getMemberId());
		int result = rService.registerComment(rComment);
		if(result > 0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	//댓글삭제
	@ResponseBody
	@RequestMapping(value="deleteComment.com", method=RequestMethod.GET)
	public String removeComment(@ModelAttribute ReviewComment rComment) {
		int result = rService.removeComment(rComment);
		if(result > 0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	//댓글 리스트
	@RequestMapping(value="commentList.com", method=RequestMethod.GET)
	public void getCommentList(HttpServletResponse response, @RequestParam("reviewNo") int reviewNo) throws Exception {
		ArrayList<ReviewComment> rcList = rService.printCommentAll(reviewNo);
		if(!rcList.isEmpty()) {
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create(); 
			gson.toJson(rcList, response.getWriter());
		}else {
			System.out.println("댓글이없습니다");
		}
	}
	
	
	
	//댓글 수정
	public String commentUpdate() {
		return null;
	}
	
	
	
	//좋아요
    @RequestMapping(value = "heart.com", method = RequestMethod.POST)
    public void heart(@ModelAttribute  ReviewLikes reviewLikes, HttpSession session, HttpServletResponse response) throws Exception {

        String heartYN = reviewLikes.getLikeCheck();
        System.out.println("heart�� :" +heartYN);
   
        HashMap<String, Object> likeMap = new HashMap<String, Object>();
  
        if(heartYN.equals("Y")) {
        	 rService.deleteReviewLike(reviewLikes);
        	 heartYN="N";
        } else {
        	 rService.insertReviewLike(reviewLikes);
        	 heartYN="Y";
        }
        int likeCount = rService.getReviewLike(reviewLikes.getReviewNo());
        likeMap.put("likeCount",likeCount);
        likeMap.put("heartYN", heartYN);
       
        new Gson().toJson(likeMap, response.getWriter());
    }
	
}
