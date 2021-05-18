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
   private MemberService service;
   
   //@RequestMapping(value="", method=RequestMethod.POST)
   public String memberLogin(HttpServletRequest request, 
                        @ModelAttribute Member member, 
                        Model model){
	   
	   return ""; 
   }
   
   //@RequestMapping(value="", method=RequestMethod.GET)
   public String memberLogout(HttpServletRequest request) {
      HttpSession session = request.getSession();
      session.invalidate();
      return "";
   }
   
   @RequestMapping(value="memberRegisterView.com", method=RequestMethod.GET)
   public String enrollView() {
      return "member/memberRegister";
   }
   
   @RequestMapping(value="memberRegister.com", method=RequestMethod.POST)
   public String memberRegister() {
      return "common/errorPage";
   }

   //@RequestMapping(value="", method=RequestMethod.GET)
   public String myInfoView() {
      return "";
      
   }
   
   //@RequestMapping(value="", method=RequestMethod.POST)
   public String modifyMember() {
         return "common/errorPage";
      
   }
   
   //@RequestMapping(value="", method=RequestMethod.GET)
   public String memberDelete(@RequestParam("userId") String userId, Model model) {
     
         return "";
      
      }
   
   //@ResponseBody
   //@RequestMapping(value="", method=RequestMethod.GET)
   public String idDuplicateCheck(@RequestParam("userId") String userId) {
      return "";
   }
}
