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
   
   // �α���
   @RequestMapping(value="", method=RequestMethod.POST)
   public String memberLogin(HttpServletRequest request, 
                        @ModelAttribute Member member, 
                        Model model){
	   
	   return "";
   }
   
   //�α׾ƿ�
   @RequestMapping(value="", method=RequestMethod.GET)
   public String memberLogout(HttpServletRequest request) {
      HttpSession session = request.getSession();
      session.invalidate();
      return "";
   }
   
   //ȸ������ ��
   @RequestMapping(value="", method=RequestMethod.GET)
   public String enrollView() {
      return "";
   }
   
   //ȸ�����
   @RequestMapping(value="", method=RequestMethod.POST)
   public String memberRegister(@ModelAttribute Member member, 
                         @RequestParam("post") String post,
                         @RequestParam("address1") String address1,
                         @RequestParam("address2") String address2,
                         Model model) {
   
      return "common/errorPage";
   
   }

   //���������� ��
   @RequestMapping(value="", method=RequestMethod.GET)
   public String myInfoView() {
      return "";
      
   }
   
   //��������
   @RequestMapping(value="", method=RequestMethod.POST)
   public String modifyMember(@ModelAttribute Member member, @RequestParam("post") String post, @RequestParam("address1") String address1, @RequestParam String address2, Model model, HttpServletRequest request) {
         return "common/errorPage";
      
   }
   
   //ȸ�� Ż��
   @RequestMapping(value="", method=RequestMethod.GET)
   public String memberDelete(@RequestParam("userId") String userId, Model model) {
     
         return "";
      
      }
   
   //���̵� �ߺ� �˻�
   @ResponseBody
   @RequestMapping(value="", method=RequestMethod.GET)
   public String idDuplicateCheck(@RequestParam("userId") String userId) {
      return "";
   }
}
