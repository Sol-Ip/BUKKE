package com.bukke.spring.member.controller;

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

import com.bukke.spring.member.domain.Member;
import com.bukke.spring.member.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService mService;

	// 로그인 JSP 이동
	@RequestMapping(value = "memberLoginForm.com", method = RequestMethod.GET)
	public String loginView() {
		return "member/loginForm";
		
	}
	
	@ResponseBody
	@RequestMapping(value = "memberLogin.com", method = RequestMethod.POST)
	public String memberLogin(
			HttpServletRequest request, @ModelAttribute Member member) {
		System.out.println(member.getMemberId());
		Member loginMember = mService.loginMember(member);
		if(loginMember != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
			return "0"; // 로그인 성공
		} else {
			return "1"; // 로그인 실패
		}
	}

	// @RequestMapping(value="", method=RequestMethod.GET)
	public String memberLogout(
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "";
		
	}

	// 회원가입 JSP 이동
	@RequestMapping(value = "memberRegisterForm.com", method = RequestMethod.GET)
	public String enrollView() {
		return "member/memberRegister";
		
	}

	@RequestMapping(value = "memberRegister.com", method = RequestMethod.POST)
	public String memberRegister(
			@ModelAttribute Member member, @RequestParam("memberAddr1") String memberAddr1,
			@RequestParam("memberAddr2") String memberAddr2, Model model) {
		String memberAddr = memberAddr1+","+memberAddr2;
		member.setMemberAddr(memberAddr);
		int result = mService.registerMember(member);
		if(result > 0) {
			model.addAttribute("msg","회원가입성공~");
			return "redirect:home.com";
		} else {
			model.addAttribute("msg","회원가입실패!");
			return "common/errorPage";
		}
		
	}

	// @RequestMapping(value="", method=RequestMethod.GET)
	public String myInfoView() {
		return "";
		
	}

	// @RequestMapping(value="", method=RequestMethod.POST)
	public String modifyMember() {
		return "common/errorPage";
		
	}

	// @RequestMapping(value="", method=RequestMethod.GET)
	public String memberDelete(
			@RequestParam("userId") String userId, Model model) {
		return "";
		
	}

	// @ResponseBody
	// @RequestMapping(value="", method=RequestMethod.GET)
	public String idDuplicateCheck(
			@RequestParam("userId") String userId) {
		return "";
		
	}
}
