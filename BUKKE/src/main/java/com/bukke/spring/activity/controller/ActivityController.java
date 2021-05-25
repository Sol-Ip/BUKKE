package com.bukke.spring.activity.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

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

@Controller
public class ActivityController {
	
	@Autowired
	private ActivityService aService;
	
	// 액티비티 전체목록 jsp 이동 (관리자)
	@RequestMapping(value="activityList.com", method=RequestMethod.GET)
	public ModelAndView activityListView(ModelAndView mv,
										@RequestParam(value="page", required=false) Integer page) {
		
		int currentPage = (page != null) ? page : 1;
		int listCount = aService.getListCount(); // 게시글 전체 갯수
		ActivityPageInfo pi = ActivityPagination.getPageInfo(currentPage, listCount);
		ArrayList<Activity> aList = aService.printAllActivity(pi);
		if(!aList.isEmpty()) {
			mv.addObject("aList", aList);
			mv.addObject("pi", pi); // 화면을 구성하는데에 사용
			mv.setViewName("activity/activityListView");
		} else {
			mv.addObject("msg", "액티비티 전체조회 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	
	// 액티비티 상세정보 jsp 이동 (모든회원)
	@RequestMapping(value="activityDetail.com", method = RequestMethod.GET)
	public ModelAndView activityDetailView(ModelAndView mv,
										@RequestParam("activityNo") int activityNo) {
		//조회 수 증가
		//aService.addReadCountActivity(activityNo);
		
		//게시글 상세조회
		Activity activity = aService.printOneActivity(activityNo);
		if(activity != null) {
			mv.addObject("activity", activity).setViewName("activity/activityDetailView");
			//System.out.println(activity.toString());
		} else {
			mv.addObject("msg", "액티비티 상세조회 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
		
	}
	
	
	// *액티비티 검색기능 메소드
	@RequestMapping(value="activitySearch.com", method=RequestMethod.GET) 
	public String activitySearch() {
//	public String activitySearch(@ModelAttribute ActivitySearch activitySearch, Model model) {
//		ArrayList<Activity> aSearchList = aService.searchActivity(activitySearch);
//		if(aSearchList.isEmpty()) {
//			model.addAttribute("aList", aSearchList);
//			model.addAttribute("acticitySearch", activitySearch);
//			return "acticity/activityListView";
//		}
		return "activity/activityListView";
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
		activity.setActivityAddr(activityAddr1 + ","+ activityAddr2);
		result = aService.registerActivity(activity);
		if (result > 0) {
			path = "redirect:activityList.com";
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
		int result = aService.modifyActivity(activity);
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
	public String activityRemove() {
		
		return null;
	}
	
	
	
}
