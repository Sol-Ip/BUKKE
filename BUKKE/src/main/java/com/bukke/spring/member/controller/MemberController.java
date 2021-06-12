package com.bukke.spring.member.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Map;
import java.util.Random;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Multipart;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.aspectj.bridge.MessageHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.HttpRequest;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.activity.domain.ActivityPageInfo;
import com.bukke.spring.activity.service.ActivityService;
import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.service.BukkeClassService;
import com.bukke.spring.common.ActivityPagination;
import com.bukke.spring.common.MemberPagination;
import com.bukke.spring.common.ReservationPagination;
import com.bukke.spring.common.ReviewPagination;
import com.bukke.spring.member.domain.Member;
import com.bukke.spring.member.domain.MemberPageInfo;
import com.bukke.spring.member.service.MemberService;
import com.bukke.spring.reservation.domain.PageInfo;
import com.bukke.spring.reservation.domain.Reservation;
import com.bukke.spring.reservation.service.ReservationService;
import com.bukke.spring.review.domain.Review;
import com.bukke.spring.review.domain.ReviewComment;
import com.bukke.spring.review.domain.ReviewPageInfo;
import com.bukke.spring.review.service.ReviewService;
import com.bukke.spring.shop.domain.Shop;
import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.sun.mail.util.logging.MailHandler;

@Controller
public class MemberController {

	@Autowired
	private MemberService mService;
	
	@Autowired
	private ReservationService reService;
	@Autowired
	private ReviewService rService; 
	@Autowired
	private BukkeClassService bService;
	@Autowired
	private ActivityService aService;
	
	/*
	 * @Autowired private MailSender mailSender;
	 */
	
	
	@Autowired
	private JavaMailSender javaMailSender;
	

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
	public ModelAndView memberRegister(@ModelAttribute Member member, @RequestParam("memberAddr1") String memberAddr1,
			@RequestParam("memberAddr2") String memberAddr2, ModelAndView mv) {
		String memberAddr = memberAddr1 + "," + memberAddr2;
		member.setMemberAddr(memberAddr);
		int result = mService.registerMember(member);
		if (result > 0) {
			mv.addObject("msg", "member");
			mv.setViewName("member/registerComplete");
		} else {
			mv.setViewName("redirect:home.com");
		}
		return mv;
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

	@RequestMapping(value="memberDeleteView.com", method=RequestMethod.GET)
	public String memberDeleteView() {
		return "member/memberDelete";
	}
	
	// @RequestMapping(value="", method=RequestMethod.GET)
	public ModelAndView memberDelete(HttpSession session,
			ModelAndView mv) {
		return mv;

	}

	@ResponseBody
	@RequestMapping(value="memberCheckIdDup.com", method=RequestMethod.POST)
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
	public void userIdSearch(ModelAndView mv, @ModelAttribute Member member,HttpServletResponse response, HttpServletRequest request) throws Exception {
		response.setCharacterEncoding("UTF-8");
		Member mem = new Member(member.getMemberName(), member.getMemberPhone());
		Member memberSearch = mService.searchMemberId(mem);
		String result = "";
		if (memberSearch != null) {
			result =  memberSearch.getMemberId();
		} else {
			result =  "아이디를 조회할 수 없습니다.";
		}
		new Gson().toJson(result, response.getWriter());
	}

	// 새 비밀번호 만들기
	/* @ResponseBody */
	@RequestMapping(value = "memberSearchPw.com", method = RequestMethod.POST)
	public void userPwSearch(HttpSession session, HttpServletResponse response, HttpServletRequest request,
			@RequestParam("memberId") String memberId, @RequestParam("memberEmail") String memberEmail 
			) throws Exception {
		response.setCharacterEncoding("UTF-8");
		Member mem = new Member();
		mem.setMemberId(memberId);
		mem.setMemberEmail(memberEmail);
		Member member = mService.searchMemberPw(mem);
		String password = "";
		
		
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
				String tomail = member.getMemberEmail();
				String title = "안녕하세요 부캐입니다. 임시 비밀번호를 이메일로 보냈습니다.";
				String content = "";
					content += "<div align='center' style='border:1px solid black;'>";
					content += "<h3>안녕하세요 부캐입니다! 회원님의 임시 비밀번호입니다. 마이페이지에서 비밀번호를 변경해주세요</h3>";
					content += "<p>임시비밀번호는 " + pwd + "입니다<p></div>";
				    String filename="C:\\Users\\gywjd\\Desktop\\부캐\\introduce1.jpg";
					//첨부파일 경로

				MimeMessage message = javaMailSender.createMimeMessage();
				try {
					MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
					
					messageHelper.setFrom(setfrom);
					messageHelper.setTo(member.getMemberEmail());
					messageHelper.setSubject(title);
					messageHelper.setText(content,true);
					
					//파일 첨부
					 FileSystemResource fsr = new FileSystemResource(filename);
				     messageHelper.addAttachment("test2.txt", fsr);
					
					//메일전송
				    this.javaMailSender.send(message);
					
					
					//비밀번호 update하기
					mem.setMemberPw(pwd);
					int result = mService.modifyPw(mem);
				} catch (Exception ex) {
				}
			}
			if(member != null)
				password = "회원님의 이메일로 전송되었습니다.";
		} else {
			password = "조회되지 않습니다.";
		}
		new Gson().toJson(password,response.getWriter());
		
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
	public ModelAndView myInfoView(ModelAndView mv, HttpSession session) {
		
		Member loginMember = (Member) session.getAttribute("loginMember");
		String memberId = loginMember.getMemberId();
		
		
		int listCount = rService.getReviewListCountById(memberId);
		int colistCount = rService.getReviewListCountById(memberId);
		int myClassCount = reService.printclassCount(memberId);
		int myActCount = reService.printActCount(memberId);
		mv.addObject("listCount",listCount);
		mv.addObject("colistCount",colistCount);
		mv.addObject("myClassCount",myClassCount);
		mv.addObject("myActCount",myActCount);
		
		
		/*
		 * mv.addObject("reservationStatus",reservationStatus);
		 * mv.addObject("reviewStatus",reviewStatus); mv.addObject("cpmmnet",cpmmnet);
		 */
		
		mv.setViewName("member/memberInfo");
		
		return mv;
	}
	

	// 마이페이지 스케쥴 관리(풀캘린더)
	@RequestMapping(value = "memberScheduleView.com", method = RequestMethod.GET)
	public String scheduleView() {
		return "member/schedule";

	}

	// 마이페이지 회원 정보 jsp
	@RequestMapping(value = "memberModifyView.com", method = RequestMethod.GET)
	public String memberModifyView(HttpSession session) {
		
		Member loginMember = (Member) session.getAttribute("loginMember");
		String memberId = loginMember.getMemberId();
		if(memberId.contains("kakao")) {
			return "member/memberModify2"; //카카오회원 상세정보페이지
		} else {
			return "member/memberModify"; //일반회원 상세정보페이지
		}
		
	}

	// 마이페이지 회원 정보 수정(일반회원)
	@RequestMapping(value = "modifyMember.com", method = RequestMethod.POST)
	public ModelAndView modifyMember(@ModelAttribute Member member, @RequestParam("memberAddr1") String memberAddr1,
			@RequestParam("memberAddr2") String memberAddr2, HttpSession session,
			ModelAndView mv) {
		String memberAddr = memberAddr1 + "," + memberAddr2;
		member.setMemberAddr(memberAddr);
		// 회원정보 변경을 하면 세션도 바껴야 하기문에 세션 다시 만들기
//		HttpSession session = request.getSession();
//		session.setAttribute("loginMember", member);
//		member = (Member) session.getAttribute("loginMember");
		session.setAttribute("loginMember", member);
		int result = mService.modifyMember(member);
		if (result > 0) {
			mv.addObject("msg", "success");
		} else {
			mv.addObject("msg", "fail");
		}
		mv.setViewName("member/modifyComplete");
		return mv;
	}

	// 마이페이지 회원 정보 수정(카카오회원)
	@RequestMapping(value = "modifyKakaoUser.com", method = RequestMethod.POST)
	public ModelAndView modifyKakaoUser(@ModelAttribute Member member, @RequestParam("memberAddr1") String memberAddr1,
			@RequestParam("memberAddr2") String memberAddr2, HttpSession session,
			ModelAndView mv) {
		String memberAddr = memberAddr1 + "," + memberAddr2;
		member.setMemberAddr(memberAddr);
//		HttpSession session = request.getSession();

//		session.setAttribute("loginMember", member);
		session.setAttribute("loginMember", member);
		int result = mService.modifykakaoMember(member);
		if (result > 0) {
			mv.addObject("msg", "success");
		} else {
			mv.addObject("msg", "fail");
		}
		mv.setViewName("member/modifyComplete");
		return mv;
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
		ArrayList<ReviewComment> rcList = rService.printAllCommentbyId(pi, memberId);
		if (!rcList.isEmpty()) {
			mv.addObject("rcList", rcList);
			mv.addObject("pi", pi);
			mv.setViewName("member/memberCommentListView");

		} else {
			/*
			 * mv.addObject("msg", "작성한 댓글이 없습니다"); 
			 * mv.setViewName("common/errorPage");
			 */
			mv.addObject("rcList", rcList);
			mv.setViewName("member/memberCommentListView");
		}
		return mv;
	}
	
	//내가들은 클래스 및 액티비티 리스트
    @RequestMapping(value="memberCAList.com", method=RequestMethod.GET)
    public ModelAndView memberCAListView(ModelAndView mv, 
                                  @RequestParam(value="page", required=false) Integer page,HttpSession session) {
       int currentPage = (page != null) ? page : 1;
       Member loginMember = (Member)session.getAttribute("loginMember");
       String memberId = loginMember.getMemberId();
       int actListCountbyId = aService.getListCountbyId(memberId);
       int classListCountbyId = bService.getListCountbyId(memberId);

       MemberPageInfo actPi = MemberPagination.getPageInfo(currentPage, actListCountbyId);
       MemberPageInfo classPi = MemberPagination.getPageInfo(currentPage,classListCountbyId);
       
       ArrayList<Activity> aList = aService.printAllActivityById(actPi,memberId);
       ArrayList<BukkeClass> bList = bService.printAllbClassById(classPi,memberId);
       
       
       if(aList.isEmpty() && bList.isEmpty() ) {
    	   mv.addObject("msg", "내가 들은 목록 조회 실패");
           mv.setViewName("common/errorPage");
          
       }else {
    	   mv.addObject("aList", aList);
           mv.addObject("actPi", actPi);
           mv.addObject("bList", bList);
           mv.addObject("classPi", classPi);
           mv.setViewName("member/memberCAList");
       }
       return mv;
    }
    //결제시 pay_status Y로 변경(액티비티)
    @ResponseBody
	@RequestMapping(value="paymentSuccess.com", method=RequestMethod.POST)
	public String addComment(@ModelAttribute Reservation reservation) {
		System.out.println(reservation.toString());
    	int result = reService.ChangeStatus(reservation);
    	
		if(result > 0) {
			return "success";
		}else {
			return "fail";
		}
	}
    
  //결제시 pay_status Y로 변경(액티비티)
    @ResponseBody
	@RequestMapping(value="paymentSuccessClass.com", method=RequestMethod.POST)
	public String addCommentClass(@ModelAttribute Reservation reservation) {
    	int result = reService.ChangeStatusClass(reservation);
    	
		if(result > 0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
}