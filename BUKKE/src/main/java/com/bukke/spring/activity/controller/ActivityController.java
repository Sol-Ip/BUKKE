package com.bukke.spring.activity.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.activity.domain.ActivityPageInfo;
import com.bukke.spring.activity.domain.ActivitySearch;
import com.bukke.spring.activity.service.ActivityService;
import com.bukke.spring.common.ActivityPagination;
import com.bukke.spring.keep.domain.Keep;
import com.bukke.spring.keep.service.KeepService;
import com.bukke.spring.member.domain.Member;
import com.bukke.spring.reservation.domain.Reservation;
import com.bukke.spring.reservation.service.ReservationService;
import com.bukke.spring.review.domain.Review;
import com.bukke.spring.review.service.ReviewService;
import com.bukke.spring.shop.domain.Shop;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;

@Controller
public class ActivityController {
	
	@Autowired
	private ActivityService aService;
	
	@Autowired
	private KeepService kService;
	
	@Autowired
	private ReservationService reService;
	
	@Autowired
	private ReviewService rService;
	
	// 분류별로 필터링 할 때 해쉬맵 이용해서 밸류값 넘겨줄 것 
	// 에이젝스로 수정하기 
	
	// 액티비티 jsp 이동 및 전체 리스트 출력 
	@RequestMapping(value="activityListView.com", method=RequestMethod.GET)
	public ModelAndView activityListView(ModelAndView mv,
										@RequestParam(value="type", required = false) String typeValue,
										@RequestParam(value="detail", required = false) String detailValue, 
										@RequestParam(value="page", required=false) Integer page ) {
										
		String type = (typeValue != null) ? typeValue : "0";
		String detail = (detailValue != null) ? detailValue : "0";
		int currentPage = (page != null) ? page : 1;
		int listCount = aService.getListCount(); // 게시글 전체 갯수
		ActivityPageInfo pi = ActivityPagination.getPageInfo(currentPage, listCount);
		ArrayList<Activity> aList = aService.printAllActivity(pi);
		
		// 전체 리스트 출력하기 (jsp에 있는 for-each문 주석 풀고!)
		if(!aList.isEmpty()) {
			mv.addObject("aList", aList);
			mv.addObject("pi", pi); // 화면을 구성하는데에 사용
			mv.addObject("type", type).addObject("detail", detail).setViewName("activity/activityListView");
			//mv.setViewName("activity/activityListView");
		} else {
			mv.addObject("msg", "액티비티 전체조회 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	
	// return mv;
	}		
	
	// 액티비티 리스트 출력 
	@RequestMapping(value="activityList.com")
	public void getActivityList (HttpServletResponse response) throws Exception {
			ArrayList<Activity> aList = aService.printAllActivity();
			if(!aList.isEmpty()) {
				Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
				gson.toJson(aList, response.getWriter());
			}else {
				System.out.println("리스트 aList : " + aList.toString());
			}
		}
	
	// 액티비티 분류 별 select 
	@ResponseBody
	@RequestMapping(value="activitySelect.com")
	public void getActivitySelectList(HttpServletResponse response,
									@RequestParam("activityType") String activityType) throws Exception {
		ArrayList<Activity> atList = aService.printActivityType(activityType); // 분류 출력과
		ArrayList<Activity> aList = aService.printActivityTypeList(activityType); // 전체 리스트 뿌려주기 
		HashMap<String, Object> actMap =  new HashMap<String, Object>();
		actMap.put("atList", atList);
		actMap.put("aList", aList);
		if(!atList.isEmpty() && !aList.isEmpty()) {
			Gson gson = new Gson();
			gson.toJson(actMap, response.getWriter());
		}
	}
	
	// 액티비티 상세분류 별 select 
	@RequestMapping(value="activityDetailSelect.com")
	public void getActivityDetailSelectList(HttpServletResponse response,
											@RequestParam("activityTypeDetails") String activityTypeDetails,
											@RequestParam("activityType") String activityType) throws Exception {
		
		ArrayList<Activity> detailList = aService.printActivityType(activityType);
		if(!detailList.isEmpty()) {
			Gson gson = new Gson();
			gson.toJson(detailList, response.getWriter());
			System.out.println("detailList : " + detailList);
		}
		
	}
			
	// 액티비티 검색 페이지 이동 및 출력
//	@RequestMapping(value = "activitySearch.com",method=RequestMethod.GET)
//	public ModelAndView activitySearchView(ModelAndView mv, 
//										@RequestParam("activitySearch") String activitySearch,
//										HttpServletRequest session) {
//		//session.setAttribute("act", "activity");
//		ArrayList<Activity> aSearchList = aService.printSearchAllList(activitySearch);
//		if (!aSearchList.isEmpty()) {
//			mv.addObject("aSearchList", aSearchList).setViewName("activity/activitySearchView");
//		} else {
//			mv.addObject("aSearchList", null).addObject("activitySearch", activitySearch).setViewName("activity/activitySearchView");
//		}
//		return mv;
//	}	
			
	
	// *액티비티 검색기능 메소드
	@RequestMapping(value="activitySearch.com", method=RequestMethod.GET) 
	public String activitySearch(@ModelAttribute ActivitySearch activitySearch, Model model) {
		ArrayList<Activity> aSearchList = aService.searchActivity(activitySearch);
		if(!aSearchList.isEmpty()) {
			model.addAttribute("aList", aSearchList);
			model.addAttribute("activitySearch", activitySearch);
			System.out.println("aList :" + aSearchList);
			return "activity/activityListView";
		} else {
			System.out.println("aList  :" + aSearchList);
			model.addAttribute("msg", "액티비티 검색결과 없음");
			return "activity/activityNonSearch";
		}
	}
	
	
	// 액티비티 상세정보 jsp 이동 (모든회원)
	// 액티비티 상위3개 글 목록
	@RequestMapping(value="activityDetail.com", method = RequestMethod.GET)
	public ModelAndView activityDetailView(ModelAndView mv,
										Model model,
										HttpServletRequest request,
										HttpSession session,
										//@ModelAttribute Keep keep,
										@RequestParam("activityNo") int activityNo) {
		//조회 수 증가
		//aService.addReadCountActivity(activityNo);
		
		
		//게시글 상세조회
		Member loginMember = (Member)session.getAttribute("loginMember"); 
		if (loginMember != null) {

			String memberId = loginMember.getMemberId();
			// 찜하기
			Keep keep = new Keep();
			keep.setActivityNo(activityNo);
			keep.setMemberId(memberId);
			
			// 예약하기
			Reservation reservation = new Reservation();
			reservation.setActivityNo(activityNo);
			reservation.setReservationId(memberId);
			
			Reservation actRes = reService.printOneActivityReservation(reservation);
			Keep actKeep = kService.printActivityKeep(keep);
			
			model.addAttribute("memberId", memberId);
			if (actKeep != null && memberId.equals(actKeep.getMemberId())) {
				keep.setKeepStatus("Y");
			} else {
				keep.setKeepStatus("N");
			}
			
			model.addAttribute("keep", actKeep);
			model.addAttribute("reservation", actRes);
		}
		
		Activity activity = aService.printOneActivity(activityNo); // 게시글 상세 조회
		ArrayList<Activity> aList = aService.printTopThreeActivity(); // 상위 top3 용도
		int getActKeeps = kService.getActivityKeep(activityNo); // 액티비티 해당 게시글 당 찜 갯수 
		ArrayList<Review> rList = rService.printReviewToActivity(activityNo); // 해당 액티비티에 따른 리뷰 글
		
		if(activity != null && !aList.isEmpty()) {
			model.addAttribute("getActKeeps",getActKeeps);
			model.addAttribute("aList", aList);
			mv.addObject("rList", rList);
			mv.addObject("activity", activity).setViewName("activity/activityDetailView");
		
		} else {
			mv.addObject("msg", "액티비티 상세조회 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
		
	}
	
	
	
	// 액티비티 등록 jsp 이동 (업체회원)
	@RequestMapping(value="activityWriteView.com", method = RequestMethod.GET)
	public String activityEnrollView() {
		
		return "activity/activityWriteForm";
	}
	
	
	// *액티비티 등록기능 메소드
	@RequestMapping(value = "activityRegister.com", method = RequestMethod.POST)
	public ModelAndView activityRegister(ModelAndView mv, 
										@ModelAttribute Activity activity,
										@RequestParam("activityAddr1") String activityAddr1, // 기본주소
										@RequestParam("activityAddr2") String activityAddr2, // 상세주소
										HttpSession session,
										@RequestParam(value = "uploadActivityFile", required = false) MultipartFile uploadActivityFile,
										HttpServletRequest request) {
		// 1. 첨부파일을 서버(workspace)에 저장, 서버에 파일을 저장하는 작업
		if (!uploadActivityFile.getOriginalFilename().equals("")) {
			String renameFileName = saveActivityFile(uploadActivityFile, request);
			if (renameFileName != null) {
				activity.setaOriginalFilename(uploadActivityFile.getOriginalFilename());
				activity.setaRenameFilename(renameFileName);
			}
		}
				
		// 디비에 데이터를 저장하는 작업
		int result = 0;
		String path = "";
		Shop loginShopper = (Shop)session.getAttribute("loginShopper");
		String shopId = loginShopper.getShopId();
		
		activity.setShopId(shopId);
		activity.setActivityAddr(activityAddr1 + ","+ activityAddr2);
		result = aService.registerActivity(activity);
		if (result > 0) {
			path = "redirect:activityListView.com";
		} else {
			mv.addObject("msg", "게시글 등록 실패");
			path = "common/errorPage";
		}
		mv.setViewName(path);
		return mv;
	}
						
	public String saveActivityFile(MultipartFile file, HttpServletRequest request) {
		// 파일 저장 경로 설정
		String root = request.getSession().getServletContext().getRealPath("resources/images");
		String savePath = root + "\\activityImageFiles";
		
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
	
	// 분류 -> 상세분류 넘기기 
	@ResponseBody
	@RequestMapping(value="activityTypeDetails.com", method=RequestMethod.GET)
	public void activityTypeDetails(@RequestParam("activityType") String activityType,
									HttpServletResponse response) throws Exception {
		ArrayList<Activity> aList = aService.printActivityType(activityType); // activityType을 가져옴
		
		response.setContentType("application/json"); // json 형태로 보내는 것
		response.setCharacterEncoding("UTF-8");
		Gson gson = new Gson();
		gson.toJson(aList, response.getWriter());
	}

	// 액티비티 수정 jsp 이동 (업체회원)
	@RequestMapping(value="activityUpdateForm.com", method = RequestMethod.GET) 
	public ModelAndView activityModifyView(ModelAndView mv,
										@RequestParam("activityNo") int activityNo) {
		
		Activity activity = aService.printOneActivity(activityNo);
		if(activity != null) {
			mv.addObject("activity", activity).setViewName("activity/activityUpdateForm");
		} else {
			mv.addObject("msg", "액티비티 수정화면 조회 실패").setViewName("common/errorPage");
		}
		return mv;
	}
	
	
	// *액티비티 수정기능 메소드
	@RequestMapping(value="activityUpdate.com", method=RequestMethod.POST)
	public ModelAndView activityUpdate(ModelAndView mv,
									HttpServletRequest request,
									@ModelAttribute Activity activity,
									@RequestParam("activityAddr1") String activityAddr1, // 기본주소
									@RequestParam("activityAddr2") String activityAddr2, // 상세주소
									@RequestParam(value="reloadActivityFile", required=false) MultipartFile reloadActivityFile) {
		// 파일 삭제 후 업로드 (수정)
		if(reloadActivityFile != null && !reloadActivityFile.isEmpty()) {
			// 기존 파일 삭제
			if(activity.getaOriginalFilename() != "") {
				deleteActivityFile(activity.getaRenameFilename(), request);
			}
			// 새 파일 업로드
			String aRenameFileName = saveActivityFile(reloadActivityFile, request);
			if(aRenameFileName != null) {
				activity.setaOriginalFilename(reloadActivityFile.getOriginalFilename());
				activity.setaRenameFilename(aRenameFileName);
			}
		}
		//DB 수정
		activity.setActivityAddr(activityAddr1 + ","+ activityAddr2);
		int result = aService.modifyActivity(activity);
		System.out.println("result : " +result);
		if(result > 0) {
			mv.setViewName("redirect:activityList.com");
		} else {
			mv.addObject("msg", "액티비티 수정 실패").setViewName("common/errorPage");
		}
		return mv;
	}
	
	// 기존 파일 삭제해주는 메소드
	public void deleteActivityFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources/images");
		String savePath = root + "\\activityImageFiles";
		File file = new File(savePath + "\\" + fileName);
		if(file.exists()) {
			file.delete();
		}
	}
	
	
	// *액티비티 삭제기능 메소드
	@RequestMapping(value="activityDelete.com", method = RequestMethod.GET)
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
			return "redirect:activityList.com";
		} else {
			model.addAttribute("msg", "액티비티 삭제 실패");
			return "common/errorPage";
		}
	}
	
	
	
}
