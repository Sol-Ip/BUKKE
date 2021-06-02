package com.bukke.spring.member.controller;

import java.util.ArrayList;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bukke.spring.common.ReviewPagination;
import com.bukke.spring.member.domain.Member;
import com.bukke.spring.member.service.MemberService;
import com.bukke.spring.review.domain.Review;
import com.bukke.spring.review.domain.ReviewPageInfo;
import com.bukke.spring.review.service.ReviewService;

@Controller
public class MemberController {

	@Autowired
	private MemberService mService;

	@Autowired
	private MailSender mailSender;
	
	@Autowired
	private ReviewService rService;

	// 로그인 JSP 이동
	@RequestMapping(value = "memberLoginForm.com", method = RequestMethod.GET)
	public String loginView() {
		return "member/loginForm";

	}

	@ResponseBody
	@RequestMapping(value = "memberLogin.com", method = RequestMethod.POST)
	public String memberLogin(HttpServletRequest request, @ModelAttribute Member member) {
		Member loginMember = mService.loginMember(member);
		if (loginMember != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
			if (member.getMemberId().equals("admin")) {
				return "admin"; // 관리자로 로그인
			} else {
				return "success"; // 로그인 성공
			}
		} else {
			return "fail"; // 로그인 실패
		}
	}

	@RequestMapping(value = "memberLogout.com", method = RequestMethod.GET)
	public String memberLogout(HttpServletRequest request) {
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
	public String memberRegister(@ModelAttribute Member member, @RequestParam("memberAddr1") String memberAddr1,
			@RequestParam("memberAddr2") String memberAddr2, Model model) {
		String memberAddr = memberAddr1 + "," + memberAddr2;
		member.setMemberAddr(memberAddr);
		int result = mService.registerMember(member);
		if (result > 0) {
			return "member/registerComplete";
		} else {
			return "redirect:home.com";
		}

	}

	// 카카오 로그인 기능
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping(value = "kakao/memberLogin.com", method = RequestMethod.POST)
	public String kakaoLogin(HttpServletRequest request, @RequestBody Map<String, Object> param) {
		if(param == null) {
			return "error"; // 로그인 실패
		}
		Map<String, Object> profile = (Map<String, Object>) param.get("profile");
		String nickname = (String) profile.get("nickname");
		String email = (String) param.get("email");
		// 맴버 변수에 값을 할당
		Member loginMember = new Member();
		// 무작위 ID 생성
		String kakaoId = "kakao";
		Random rand = new Random();
		for(int i = 0; i < 6; i++) {
			String ran = Integer.toString(rand.nextInt(10));
			kakaoId += ran;
		}
		// 무작위 PW 생성
		String pwd = "";
		String pwdSt[] = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"};
		for(int i=1; i<=6; i++) {
			pwd+=pwdSt[rand.nextInt(26)];
		}
		loginMember.setMemberId(kakaoId);
		loginMember.setMemberPw(pwd);
		loginMember.setMemberName(nickname);
		loginMember.setMemberNick(nickname);
		loginMember.setMemberEmail(email);
		int result = mService.loginKakao(loginMember); // 이메일 중복검사
		if(result > 0) {
			// 등록된 회원인 경우 세션 활성화
				HttpSession session = request.getSession();
				session.setAttribute("loginMember", loginMember);
				return "success"; // 로그인 성공
		} else {
			// 등록되지 않은 회원인 경우, 회원가입을 시도하고 세션 활성화
			int registerResult = mService.registerKakao(loginMember);
			if(registerResult > 0) {
				HttpSession session = request.getSession();
				session.setAttribute("loginMember", loginMember);
				return "success"; // 로그인 성공
			}
			return "error"; // 로그인 실패
		}
	}

	// @RequestMapping(value="", method=RequestMethod.POST)
	public String modifyMember() {
		return "common/errorPage";

	}

	// @RequestMapping(value="", method=RequestMethod.GET)
	public String memberDelete(@RequestParam("userId") String userId, Model model) {
		return "";

	}

	@ResponseBody
	@RequestMapping(value="memberCheckIdDup.com", method=RequestMethod.GET)
	public String idDuplicateCheck(@RequestParam("memberId") String memberId) {
		int result = mService.checkIdDup(memberId); // 이메일 중복검사
		if(result > 0) {
			return "yes"; // 아이디 중복있음
		}
		return "no"; // 아이디 중복없음

	}

	// 아이디 비밀번호 찾기 페이지
	@RequestMapping(value = "memberCheck.com", method = RequestMethod.GET)
	public String memberIdSearch() {
		return "member/memberSearch";
	}

	// 아이디 찾기
	@ResponseBody
	@RequestMapping(value = "memberSearchId.com", method = RequestMethod.POST)
	public String userIdSearch(ModelAndView mv, @ModelAttribute Member member) {
		Member mem = new Member(member.getMemberName(), member.getMemberPhone());
		Member memberSearch = mService.searchMemberId(mem);

		if (memberSearch != null) {
			return memberSearch.getMemberId();
		} else {
			return "No Id";
		}
	}

	// 새 비밀번호 만들기
	@ResponseBody
	@RequestMapping(value = "memberSearchPw.com", method = RequestMethod.POST)
	public String userPwSearch(HttpSession session, HttpServletRequest request, HttpServletRequest response,
			@RequestParam("memberId") String memberId, @RequestParam("memberEmail") String memberEmail) {
		Member mem = new Member();
		mem.setMemberId(memberId);
		mem.setMemberEmail(memberEmail);
		Member member = mService.searchMemberPw(mem);
		String pwd = "";
		String pwdSt[] = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"};
		if (member != null) {
			Random r = new Random();
			for(int i=1; i<=6; i++) {
				pwd+=pwdSt[r.nextInt(26)];
			}
			
			if (member.getMemberId().equals(memberId)) {
				session.setAttribute("memberEmail", member.getMemberEmail());

				String setfrom = "dlgywjd4878@gmail.com";
				String tomail = memberEmail;
				String title = "안녕하세요 부케입니다. 임시 비밀번호를 이메일로 보냈습니다.";
				String content = "임시 비밀번호는 " + pwd + "입니다.";

//		  	MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "utf-8");
//		  	
//		  	messageHelper.setFrom(setfrom);
//		  	messageHelper.setTo(tomail);
//		  	messageHelper.setSubject(title);
//		  	messageHelper.setText(content);

				try {
					SimpleMailMessage message = new SimpleMailMessage();
					message.setTo(member.getMemberEmail());
					message.setSubject(title);
					message.setText(content);
					this.mailSender.send(message);
					
					//비밀번호 update하기
					mem.setMemberPw(pwd);
					int result = mService.modifyPw(mem);
				} catch (Exception ex) {
				}
			}
			return "success";
		} else {
			return "fail";
		}
	}
	
	
	
	
	// DB에서 비밀번호 바꾸기
//	@RequestMapping(value = "memberNewPw.com", method = RequestMethod.POST)
//	public String userNewPw(@ModelAttribute Member member) {
//		int id = mService.modifyMemberPw(member);
//		
//		return null;
//	}

	// 마이페이지 화면
	@RequestMapping(value = "memberMyPage.com", method = RequestMethod.GET)
	public String myInfoView() {
		return "member/memberInfo";

	}

	// 마이페이지 스케쥴 관리(풀캘린더)
	@RequestMapping(value = "memberScheduleView.com", method = RequestMethod.GET)
	public String scheduleView() {
		return "member/schedule";

	}

	// 마이페이지 회원 정보 수정
	@RequestMapping(value = "memberModifyView.com", method = RequestMethod.GET)
	public String memberModifyView() {
		return "member/memberModify";

	}

	// 마이페이지 채팅 화면
	@RequestMapping(value = "chatView.com", method = RequestMethod.GET)
	public String chatView() {

		return "chat/chatting";

	}
	
	
	//마이페이지 좋아요 목록
	@RequestMapping(value="reviewLikeList.com", method=RequestMethod.GET)
	public ModelAndView reviewListView(ModelAndView mv
			,@RequestParam(value="page", required=false) Integer page,  HttpSession session) {
		Member loginMember = (Member)session.getAttribute("loginMember");
		String memberId = loginMember.getMemberId();
		int currentPage = (page != null) ? page : 1;
		int listCount = rService.getListCountById(memberId);
		ReviewPageInfo pi = ReviewPagination.getPageInfo(currentPage, listCount);
		ArrayList<Review> rlList = rService.printLikeReview(pi, memberId);
		if(!rlList.isEmpty()) {
			mv.addObject("rlList", rlList);
			mv.addObject("pi", pi);
			mv.setViewName("member/memberLikeListView");
			
		}else {
			mv.addObject("msg", "좋아요한 글이 없습니다");
			mv.setViewName("common/errorPage");
			
		}
		return mv;	
	}
	
	// 마이페이지 내가쓴 후기글 목록
	@RequestMapping(value = "reviewListbyId.com", method = RequestMethod.GET)
	public ModelAndView reviewListViewbyId(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page,
			HttpSession session) {
		Member loginMember = (Member) session.getAttribute("loginMember");
		String memberId = loginMember.getMemberId();
		int currentPage = (page != null) ? page : 1;
		
		int listCount = rService.getReviewListCountById(memberId);
		ReviewPageInfo pi = ReviewPagination.getPageInfo(currentPage, listCount);
		ArrayList<Review> rList = rService.printAllReviewbyId(pi, memberId);
		if (!rList.isEmpty()) {
			mv.addObject("rList", rList);
			mv.addObject("pi", pi);
			mv.setViewName("member/memberReviewListView");

		} else {
			mv.addObject("msg", "작성한 후기가 없습니다");
			mv.setViewName("common/errorPage");

		}
		return mv;
	}
	
	// 마이페이지 내가쓴 댓글 목록
	@RequestMapping(value = "commentListbyId.com", method = RequestMethod.GET)
	public ModelAndView rListViewbyId(ModelAndView mv,
			@RequestParam(value = "page", required = false) Integer page, HttpSession session) {
		Member loginMember = (Member) session.getAttribute("loginMember");
		String memberId = loginMember.getMemberId();
		int currentPage = (page != null) ? page : 1;

		int listCount = rService.getCommentListCountById(memberId);
		ReviewPageInfo pi = ReviewPagination.getPageInfo(currentPage, listCount);
		ArrayList<Review> rcList = rService.printAllCommentbyId(pi, memberId);
		if (!rcList.isEmpty()) {
			mv.addObject("rcList", rcList);
			mv.addObject("pi", pi);
			mv.setViewName("member/memberCommentListView");

		} else {
			mv.addObject("msg", "작성한 댓글이 없습니다");
			mv.setViewName("common/errorPage");

		}
		return mv;
	}
}