package com.bukke.member.controller;

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

import com.bukke.member.domain.Member;
import com.bukke.member.service.MemberService;

@Controller
public class MemberController {
   
   @Autowired
   private MemberService service;
   
   // 로그인
   @RequestMapping(value="", method=RequestMethod.POST)
   public String memberLogin(HttpServletRequest request, 
                        @ModelAttribute Member member, 
                        Model model){
	   
	   return "";
   }
   
   //로그아웃
   @RequestMapping(value="", method=RequestMethod.GET)
   public String memberLogout(HttpServletRequest request) {
      HttpSession session = request.getSession();
      session.invalidate();
      return "";
   }
   
   //회원가입 폼
   @RequestMapping(value="", method=RequestMethod.GET)
   public String enrollView() {
      return "";
   }
   
   //회원등록
   @RequestMapping(value="", method=RequestMethod.POST)
   public String memberRegister(@ModelAttribute Member member, 
                         @RequestParam("post") String post,
                         @RequestParam("address1") String address1,
                         @RequestParam("address2") String address2,
                         Model model) {
   
      return "common/errorPage";
   
   }

   //마이페이지 뷰
   @RequestMapping(value="", method=RequestMethod.GET)
   public String myInfoView() {
      return "";
      
   }
   
   //정보수정
   @RequestMapping(value="", method=RequestMethod.POST)
   public String modifyMember(@ModelAttribute Member member, @RequestParam("post") String post, @RequestParam("address1") String address1, @RequestParam String address2, Model model, HttpServletRequest request) {
         return "common/errorPage";
      
   }
   
   //회원 탈퇴
   @RequestMapping(value="", method=RequestMethod.GET)
   public String memberDelete(@RequestParam("userId") String userId, Model model) {
     
         return "";
      
      }
   
   //아이디 중복 검사
   @ResponseBody
   @RequestMapping(value="", method=RequestMethod.GET)
   public String idDuplicateCheck(@RequestParam("userId") String userId) {
      return "";
   }
}
