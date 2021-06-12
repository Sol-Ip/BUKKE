package com.bukke.spring.admin.controller;

import java.io.File;
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

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.activity.service.ActivityService;
import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.service.BukkeClassService;
import com.bukke.spring.member.domain.Member;
import com.bukke.spring.member.service.MemberService;
import com.bukke.spring.review.domain.Review;
import com.bukke.spring.review.domain.ReviewComment;
import com.bukke.spring.review.service.ReviewService;
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
	
	@Autowired
	private ReviewService rService;

	// 관리자페이지 이동
	@RequestMapping(value = "adminPage.com", method = RequestMethod.GET)
	public String adminPage(Model model) {
		int aCount = aService.getListCount();
		int cCount = bService.getListCount();
		ArrayList<Member> mList = mService.printAllMember();
		
		model.addAttribute("aCount", aCount); 
		model.addAttribute("cCount", cCount);
		
		if (!mList.isEmpty()) {
			model.addAttribute("mList", mList);
			return "admin/index";
		} else {
			model.addAttribute("msg", "일반회원이없습니다");
			return "common/errorPage";
		}
		
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
	 
		// 클래스 삭제
		@RequestMapping(value="adminbClassDelete.com", method=RequestMethod.GET)
		public String bukkeClassRemove(Model model,
										@RequestParam("classNo") int classNo,
										@RequestParam("cRenameFilename") String cRenameFilename,
										HttpServletRequest request) {
			// 업로드 된 파일 삭제
			if(cRenameFilename != "") {
				deleteClassFile(cRenameFilename, request);
			}
			// DB에 데이터 업데이트
			int result = bService.removeBclass(classNo);
			if(result > 0) {
				model.addAttribute("msg", "클래스 삭제에 성공했습니다.");
				return "admin/bClassManage"; 
			}else {
				return "admin/bClassManage"; 
			}
		}
		
		// 액티비티 삭제
		@RequestMapping(value="adminActivityDelete.com", method = RequestMethod.GET)
		public String activityRemove(Model model,
							@RequestParam("activityNo") int activityNo,
							@RequestParam("aRenameFilename") String aRenameFilename,
							HttpServletRequest request) {
			// 업로드 된 파일 삭제
			if(aRenameFilename !="") {
				deleteActivityFile(aRenameFilename, request);
			}
			// DB에 데이터 업데이트
			int result = aService.removeActivity(activityNo);
			if(result > 0) {
				return "admin/activityManage";
			} else {
				model.addAttribute("msg", "액티비티 삭제 실패");
				return "admin/activityManage";
			}
		}
	
			// 파일 삭제
			private void deleteClassFile(String fileName, HttpServletRequest request) {
				String root = request.getSession().getServletContext().getRealPath("resources");
				String savePath = root + "\\bClassFiles";
				File file = new File(savePath + "\\" + fileName);
				if(file.exists()) {
					file.delete();
				}
			}
			// 파일 삭제
			public void deleteActivityFile(String fileName, HttpServletRequest request) {
				String root = request.getSession().getServletContext().getRealPath("resources/images");
				String savePath = root + "\\activityImageFiles";
				File file = new File(savePath + "\\" + fileName);
				if(file.exists()) {
					file.delete();
				}
			}
			
		//후기관리 메뉴
		@RequestMapping(value="adminReviewManage.com", method=RequestMethod.GET)
		public String getreivewList(Model model) { 
			ArrayList<Review> rList = rService.printAllManageReview();
				if(!rList.isEmpty()) {
					model.addAttribute("rList",rList);
					return "admin/reviewManage";
				}else {
					model.addAttribute("msg", "등록된 후기가 없습니다.");
					return "admin/reviewManage";
				}
		}
		
		//후기 삭제
		@RequestMapping(value="reviewAdminDelete.com", method = RequestMethod.GET)
		public String reviewAdiminDelete(Model model,@RequestParam("reviewNo") int reviewNo,
											@RequestParam("rRenameFilename") String rRenameFilename, HttpServletRequest request) {
			if (rRenameFilename != "") {
				deleteReviewFile(rRenameFilename, request);
			}
			
			int result = rService.removeReview(reviewNo);
			if (result > 0) {
				return "redirect:adminReviewManage.com";
			} else {
				model.addAttribute("msg", "삭제하실 수 없습니다");
				return "common/errorPage";
			}
		}
		
		//후기 파일 삭제
		private void deleteReviewFile(String fileName, HttpServletRequest request) {
			String root = request.getSession().getServletContext().getRealPath("resources");
			String savePath = root + "\\bClassFiles";
			File file = new File(savePath + "\\" + fileName);
			if(file.exists()) {
				file.delete();
			}
		}
		
		//댓글 관리 메뉴
		@RequestMapping(value="adminCommentManage.com", method=RequestMethod.GET)
		public String getcommentList(Model model) { 	
			ArrayList<ReviewComment> rcList = rService.printAllManageComment();
			if(!rcList.isEmpty()) {
				model.addAttribute("rcList",rcList);
				return "admin/commentManage";
			}else {
				model.addAttribute("msg","등록된 댓글이 없습니다.");
				return "admin/commentManage";
			}
		}
		
		//댓글 삭제
		@RequestMapping(value="commentAdminDelete.com",method = RequestMethod.GET)
		public String updateComment(@RequestParam("commentNo")int commentNo,@RequestParam("reviewNo")int reviewNo, HttpServletResponse response,Model model) {
			HashMap<String,Integer> cMap = new HashMap<String, Integer>();
			cMap.put("commentNo", commentNo);
			cMap.put("reviewNo", reviewNo);
			int result = rService.removeAdminComment(cMap);
			
			
			
//			new Gson().toJson(cMap, response.getWriter());
			if (result > 0) {
				return "redirect:adminCommentManage.com";
			} else {
				model.addAttribute("msg", "삭제하실 수 없습니다");
				return "common/errorPage";
			}
			
			}
		}
