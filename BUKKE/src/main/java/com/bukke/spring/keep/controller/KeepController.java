package com.bukke.spring.keep.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bukke.spring.keep.domain.Keep;
import com.bukke.spring.keep.service.KeepService;
import com.bukke.spring.member.domain.Member;

@Controller
public class KeepController {

	@Autowired
	private KeepService kService;
	
	// 찜목록 jsp이동 (일반회원)
	public String KeepListView() {
		return null;
	}
	// *찜목록 추가기능 메소드 --클래스
	public String AddBukkeClasstoKeep() {
		return null;
	}
	// *찜목록 추가기능 메소드 --액티비티
	@RequestMapping(value="activityKeep.com")
	public String AddActivitytoKeep(@RequestParam("activityNo") int activityNo,
									Model model,
									HttpSession session) {
		
		Member loginMember = (Member)session.getAttribute("loginMember"); 
		Keep keep = new Keep();
		
		keep.setActivityNo(activityNo);
		keep.setMemberId(loginMember.getMemberId());
		
		int result = kService.insertActivitytoKeep(keep);
		
		if(result > 0) {
			System.out.println("찜한 액티비티 글번호 : " + result);
			return "redirect:activityDetail.com?activityNo="  + activityNo;
		} else {
			model.addAttribute("msg", "액티비티 찜하기 실패");
			return "common/errorPage";
		}
		
	}
	// *찜목록 삭제기능 메소드 --클래스
	public String RemoveBukkeClassfromKeep() {
		return null;
	}
	// *찜목록 삭제기능 메소드 --액티비티
	public String RemoveActivityfromKeep() {
		return null;
	}
}
