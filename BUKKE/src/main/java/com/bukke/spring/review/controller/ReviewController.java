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
	
	// �ı� ��ü ��ȸ
	@RequestMapping(value="reviewList.com", method=RequestMethod.GET)
	public ModelAndView reviewListView(ModelAndView mv
			,@RequestParam(value="page", required=false) Integer page) {
		int currentPage = (page != null) ? page : 1;
		int listCount = rService.getListCount();
		ReviewPageInfo pi = ReviewPagination.getPageInfo(currentPage, listCount);
		ArrayList<Review> rList = rService.printAllReview(pi);
		if(!rList.isEmpty()) {
			mv.addObject("rList", rList);
			mv.addObject("pi", pi);
			mv.setViewName("review/reviewListView");
			
		}else {
			mv.addObject("msg", "리스트가 없습니다");
			mv.setViewName("common/errorPage");
			
		}
		return mv;
		
	}
	
	// �ı� �� ��ȸ
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
			// 1check?���ƿ� ���θ� üũ���༭ ��Ʈ������ �����ش�
		    int rLikes = rService.getReviewLike(reviewNo); // ���� �� reviewNo�� �޺κ� ����
		    model.addAttribute("heart",rLikes);////////////////////////////////////////////////�̰� �ڲ� 0���ΰ���
		    System.out.println("좋아요몇개? "+ rLikes);
		}
	    
		
		if(review != null) {
			model.addAttribute("review", review);
			return "review/reviewDetailView";
		}else {
			model.addAttribute("msg", "�ı� ����ȸ ����");
			return "common/errorPage";
		}
		
	}
	
	// �ı� �˻� ���
	@RequestMapping(value="reviewSearch.com", method=RequestMethod.GET)
	public String reviewSearch(@ModelAttribute ReviewSearch search, Model model) {
		
		// 2���� ���� �ϳ��� ��Ƽ� ������ ���
		// 1. Domain(VO) Ŭ���� �̿�
		// 2. HashMap ����ϱ�
		ArrayList<Review> searchList = rService.searchReview(search);
		if(!searchList.isEmpty()) {
			model.addAttribute("rList", searchList);
			model.addAttribute("search", search);
			return "review/reviewListView";
		}else {
			model.addAttribute("msg", "�������� �˻� ����");
			return "common/errorPage";
		}
	}
	///////////////////////////////////////////////////////////////////
	//검색후 페이징 처리를 도전했으나.....................페이징은 계속 원본을 따라간다..
	/*
	 * @RequestMapping(value="reviewSearch.com", method=RequestMethod.GET) public
	 * ModelAndView reviewSearch(ModelAndView
	 * mv, @RequestParam(value="page",required=false) Integer page ,@ModelAttribute
	 * ReviewSearch search, Model model) { int currentPage = (page != null) ? page :
	 * 1; int listCount = rService.getListCount(); ReviewPageInfo pi =
	 * ReviewPagination.getPageInfo(currentPage, listCount);
	 * 
	 * ArrayList<Review> searchList = rService.searchReview(search);
	 * if(!searchList.isEmpty()) { mv.addObject("searchList", searchList);
	 * mv.addObject("pi", pi); mv.setViewName("review/reviewListView"); }else {
	 * mv.addObject("msg", "�Խñ� ��ü��ȸ ����"); mv.setViewName("common/errorPage");
	 * } return mv; }
	 */
	
		/////////////////////////////////////////////////////////////////////
	
	
	
	// �ı� ��� ��
	@RequestMapping(value="reviewWriteView.com", method=RequestMethod.GET)
	public String reviewEnrollView() {
		return "review/reviewWriteForm";
	}
	
	// �ı� ��� ���
	@RequestMapping(value="reviewAdd.com", method=RequestMethod.POST)
	public ModelAndView reviewRegister(ModelAndView mv, @ModelAttribute Review review,
			@RequestParam(value = "uploadFile", required = false) MultipartFile uploadFile,
			HttpServletRequest request) {
		// ������ ������ �����ϴ� �۾�
		if (!uploadFile.getOriginalFilename().equals("")) {
			String renameFileName = saveFile(uploadFile, request);
			if (renameFileName != null) {
				review.setrOriginalFilename(uploadFile.getOriginalFilename());
				review.setrRenameFilename(renameFileName);
			}
		}
		// ��� �����͸� �����ϴ� �۾�
		int result = 0;
		String path = "";
		result = rService.registerReview(review);
		if (result > 0) {
			path = "redirect:reviewList.com";
		} else {
			mv.addObject("msg", "�Խñ� ��� ����");
			path = "common/errorPage";
		}
		mv.setViewName(path);
		return mv;
	}

	//�ı� ���� ����
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		// ���� ���� ��� ����
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\reviewFiles";
		// ���� ���� ����
		File folder = new File(savePath);
		// ���������� �ڵ� ����
		if(!folder.exists()) {
			folder.mkdir();
		}
		// ���ϸ� �����ϱ�
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originalFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new Date(System.currentTimeMillis())) 
								+ "." + originalFileName.substring(originalFileName.lastIndexOf(".")+1);
								// a.bc.jpg
		String filePath = folder + "\\" + renameFileName;
		// ��������
		try {
			file.transferTo(new File(filePath));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// ����
		return renameFileName;
	}
	
	// �ı� ���� ��
	@RequestMapping(value="reviewModifyView.com")
	public ModelAndView reviewModifyView(ModelAndView mv, @RequestParam("reviewNo") int reviewNo) {

		Review review = rService.printOneReview(reviewNo);
		if (review != null) {
			mv.addObject("review", review).setViewName("review/reviewUpdateView");
		} else {
			mv.addObject("msg", "�Խñ� �� ��ȸ ����").setViewName("common/errorPage");
		}

		return mv;
	}
	
	// �ı� ���� ���
	@RequestMapping(value="reviewUpdate.com", method=RequestMethod.POST)
	public ModelAndView reviewUpdate(ModelAndView mv, HttpServletRequest request, @ModelAttribute Review review,
			@RequestParam(value = "reloadFile", required = false) MultipartFile reloadFile) {
			// ���� ���� �� ���ε� ( ���� )
		if (reloadFile != null && !reloadFile.isEmpty()) {
				// ���� ���� ����
			if (review.getrOriginalFilename() != "") {
				deleteFile(review.getrRenameFilename(), request);
			}
				// �� ���� ���ε�
			String renameFileName = saveFile(reloadFile, request);
			if (renameFileName != null) {
				review.setrOriginalFilename(reloadFile.getOriginalFilename());
				review.setrRenameFilename(renameFileName);
			}
		}
			// DB ����
		int result = rService.modifyReview(review);
		if (result > 0) {
			mv.setViewName("redirect:reviewList.com");
		} else {
			mv.addObject("msg", "�Խñ� ���� ����").setViewName("common/errorPage");
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
	
	// �Խñ� ����(�����δ� ���� ������Ʈ)
	@RequestMapping(value = "reviewDelete.com", method = RequestMethod.GET)
	public String reviewDelete(Model model, @RequestParam("reviewNo") int reviewNo,
			@RequestParam("rRenameFilename") String rRenameFilename, HttpServletRequest request) {
		// ���ε�� ���� ����
		if (rRenameFilename != "") {
			deleteFile(rRenameFilename, request);
		}

		// ��� ������ ������Ʈ
		int result = rService.removeReview(reviewNo);
		if (result > 0) {
			return "redirect:reviewList.com";
		} else {
			model.addAttribute("msg", "�Խñ� ���� ����");
			return "common/errorPage";
		}
	}
		
	//��� ���
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
	
	//��� ����
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
	
	//��� ����Ʈ ��ȸ
	@RequestMapping(value="commentList.com", method=RequestMethod.GET)
	public void getCommentList(HttpServletResponse response, @RequestParam("reviewNo") int reviewNo) throws Exception {
		ArrayList<ReviewComment> rcList = rService.printCommentAll(reviewNo);
		if(!rcList.isEmpty()) {
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create(); // ��¥ ���� ����!
			gson.toJson(rcList, response.getWriter());
		}else {
			System.out.println("��� �����Ͱ� �����ϴ�.");
		}
	}
	
	
	
	// ��� ���� ���
	public String commentUpdate() {
		return null;
	}
	
	
	
	//���ƿ� ��Ʈ
    @RequestMapping(value = "heart.com", method = RequestMethod.POST)
    public void heart(@ModelAttribute  ReviewLikes reviewLikes, HttpSession session, HttpServletResponse response) throws Exception {

        String heartYN = reviewLikes.getLikeCheck();
        System.out.println("heart�� :" +heartYN);
        //int reviewNo = reviewLikes.getReviewNo();
    //    Member loginMember = (Member)session.getAttribute("loginMember");
        //String memberId = loginMember.getMemberId();
        HashMap<String, Object> likeMap = new HashMap<String, Object>();
        
        //reviewLikes.setReviewNo(reviewNo);
        //reviewLikes.setMemberId(memberId);
        if(reviewLikes !=null) {
        	System.out.println("reviewLikes ���� �ξƴ�");
        	System.out.println("reviewLikes.likesNo �� : "+ reviewLikes.getLikesNo());
        }
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
        
        System.out.println(reviewLikes.getMemberId());
        
		/*
		 * if(heart >= 1) { rService.deleteReviewLike(reviewLikes); heart=0;
		 * ////////////////////////////////////////db�����޾ƿ��°������ؾ���
		 * 
		 * } else { rService.insertReviewLike(reviewLikes); heart=1;
		 * //////////////////////////////////////// }
		 */
        //heart=rService.getReviewLike(reviewLikes);	
        System.out.println("heart�� :" +heartYN);
        new Gson().toJson(likeMap, response.getWriter());
    }
	
}
