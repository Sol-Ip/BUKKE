package com.bukke.spring.member.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bukke.spring.member.domain.Member;
import com.bukke.spring.member.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService mService;
	
	
	/* @Autowired private MailSender mailSender; */
	 

	// 로그인 JSP 이동
	@RequestMapping(value = "memberLoginForm.com", method = RequestMethod.GET)
	public String loginView() {
		return "member/loginForm";
		
	}
	
	@ResponseBody
	@RequestMapping(value = "memberLogin.com", method = RequestMethod.POST)
	public String memberLogin(
			HttpServletRequest request, @ModelAttribute Member member) {
		Member loginMember = mService.loginMember(member);
		if(loginMember != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
			if(member.getMemberId().equals("admin")) {
				return "admin"; // 관리자로 로그인
			} else {
				return "success"; // 로그인 성공
			}
		} else {
			return "fail"; // 로그인 실패
		}
	}

	@RequestMapping(value="memberLogout.com", method=RequestMethod.GET)
	public String memberLogout(
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:home.com";
		
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
	
	// 카카오 로그인 매핑을 위한 페이지
	@RequestMapping(value = "kakao/memberLogin.com", method = RequestMethod.GET)
	public String kakaoLogin(Model model) {
		model.addAttribute("msg","카카오 로그인 리다이렉트 페이지입니다.");
		return "common/errorPage";
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
	
	
	//아이디 비밀번호 찾기 페이지
		@RequestMapping(value="memberCheck.com",method = RequestMethod.GET)
		public String memberIdSearch() {
			return "member/memberSearch";
		}
	
	
	//아이디 찾기
	@ResponseBody
	@RequestMapping(value="memberSearchId.com",method = RequestMethod.POST)
	public String userIdSearch(ModelAndView mv,@ModelAttribute Member member){
		Member mem = new Member(member.getMemberName(),member.getMemberPhone());	
		Member memberSearch = mService.searchMemberId(mem);
			
		if(memberSearch != null) {
			return memberSearch.getMemberId();
		}else {
			return "No Id";
		}
	}
	
	  //새 비밀번호 만들기
	  
		
		/*
		 * @ResponseBody
		 * 
		 * @RequestMapping(value="memberSearchPw.com",method=RequestMethod.GET) public
		 * ModelAndView userPwSearch(HttpSession session, HttpServletRequest request,
		 * HttpServletRequest response,
		 * 
		 * @RequestParam("memberId")String memberId, @RequestParam("memberEmail")String
		 * MemberEmail){ Member member = mService.searchMemberPw(MemberEmail);
		 * 
		 * if(member !=null) { Random r = new Random(); int num = r.nextInt(999999);
		 * 
		 * if(member.getMemberId().equals(memberId)) {
		 * session.setAttribute("memberEmail", member.getMemberEmail());
		 * 
		 * String setfrom = "dlgywjd4878@gmail.com"; String tomail = MemberEmail; String
		 * title = "이메일로 인증번호를 보냈습니다.";
		 * 
		 * } } return null; }
		 */
	 
	  //이메일 전송하기
	  
	
	
	// 마이페이지 화면
	@RequestMapping(value="memberMyPage.com", method=RequestMethod.GET)
	public String myInfoView() {
		return "member/memberInfo";
		
	}
	
	// 마이페이지 스케쥴 관리(풀캘린더)
		@RequestMapping(value="memberScheduleView.com", method=RequestMethod.GET)
		public String scheduleView() {
			return "member/schedule";
			
		}
	
	// 마이페이지 회원 정보 수정
		@RequestMapping(value="memberModifyView.com", method=RequestMethod.GET)
		public String memberModifyView() {
			return "member/memberModify";
			
		}
	// 마이페이지 채팅 화면
		@RequestMapping(value="chatView.com", method=RequestMethod.GET)
		public String chatView() {
			return "chat/chatting";
			
		}
}