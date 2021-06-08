package com.bukke.spring.keep.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.activity.service.ActivityService;
import com.bukke.spring.common.KeepPagination;
import com.bukke.spring.keep.domain.Keep;
import com.bukke.spring.keep.domain.KeepPageInfo;
import com.bukke.spring.keep.service.KeepService;
import com.bukke.spring.member.domain.Member;

@Controller
public class KeepController {

	@Autowired
	private KeepService kService;
	
	@Autowired
	private ActivityService aService;
	
	// 찜목록 jsp이동 (일반회원)
	public String KeepListView() {
		return null;
	}
	// *찜목록 추가기능 메소드 --클래스
	public String AddBukkeClasstoKeep() {
		return null;
	}
	
	// *찜목록 삭제기능 메소드 --클래스
		public String RemoveBukkeClassfromKeep() {
			return null;
		}
		
		
	// *찜목록 추가기능 메소드 --액티비티
	@RequestMapping(value="activityKeep.com")
	public String insertActivityKeep(@RequestParam("activityNo") int activityNo,
									Model model,
									HttpSession session) {
		
		Member loginMember = (Member)session.getAttribute("loginMember"); 
		Keep keep = new Keep();
		
		keep.setActivityNo(activityNo);
		keep.setMemberId(loginMember.getMemberId());
		
		int result = kService.insertActivitytoKeep(keep);
		
		if(result > 0) {
			//System.out.println("찜한 액티비티 결과 : " + result);
			return "redirect:activityDetail.com?activityNo="  + activityNo;
		} else {
			model.addAttribute("msg", "액티비티 찜하기 실패");
			return "common/errorPage";
		}
		
	}
	
	// *찜목록 삭제기능 메소드 --액티비티
	@RequestMapping(value="updateActivityKeep.com")
	public String updateActivityKeep(@RequestParam("activityNo") int activityNo,
									Model model,
									HttpSession session) {
		Member loginMember = (Member)session.getAttribute("loginMember"); 
		String memberId = loginMember.getMemberId();
		Keep keep = new Keep();
		keep.setActivityNo(activityNo);
		keep.setMemberId(memberId);
		
		int result = kService.updateActivityfromKeep(keep);
		System.out.println("null?? " + result);
		if(result > 0) {
			//return "redirect:activityDetail.com?activityNo='" + activityNo + "', loginMember='" + loginMember;
			return "redirect:activityDetail.com?activityNo=" + activityNo;
		} else {
			model.addAttribute("msg", "액티비티 찜하기 취소 실패");
			return "common/errorPage";
		}
		
	}
	
	// 찜 목록 전체보기 
	@RequestMapping(value="KeepListbyId.com")
	public ModelAndView keepMypage(ModelAndView mv,
									HttpSession session,
									@RequestParam(value="page", required=false) Integer page) {
		
		//Keep keep = new Keep();
		Member loginMember = (Member)session.getAttribute("loginMember"); 
		String memberId = loginMember.getMemberId();
		
		int currentPage = (page != null) ? page : 1;
		int listCount = kService.getKeepListCount(memberId); // keep 전체 갯수
		int listCountCla = kService.getClassKeepListCount(memberId); // keep 클래스 갯수
		int listCountAct = kService.getActKeepListCount(memberId); // keep 액티비티 갯수
		
		KeepPageInfo pi = KeepPagination.getPageInfo(currentPage, listCount);
		KeepPageInfo piCla = KeepPagination.getPageInfo(currentPage, listCountCla); 
		KeepPageInfo piAct = KeepPagination.getPageInfo(currentPage, listCountAct);
		
		ArrayList<Keep> kList = kService.printAllKeepList(pi, memberId); // keep 목록 전체 
		ArrayList<Keep> claList = kService.printClassKeepList(piCla, memberId); // keep 목록 중 클래스
		ArrayList<Keep> actList = kService.printActivityKeepList(piAct, memberId); // keep 목록 중 액티비티
		System.out.println("keepList : "+ kList);
		if(!kList.isEmpty()) {
			mv.addObject("claList", claList);
			mv.addObject("actList", actList);
			mv.addObject("kList", kList);
			mv.addObject("pi", pi);
			mv.addObject("piCla", piCla);
			mv.addObject("piAct", piAct);
			mv.setViewName("member/memberKeep");
		} else {
			mv.addObject("msg", "찜 목록 전체조회 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
}
