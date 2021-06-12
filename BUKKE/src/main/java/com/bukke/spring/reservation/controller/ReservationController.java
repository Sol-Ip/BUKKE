package com.bukke.spring.reservation.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.activity.service.ActivityService;
import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.service.BukkeClassService;
import com.bukke.spring.common.MemberPagination;
import com.bukke.spring.common.ReservationPagination;
import com.bukke.spring.member.domain.Member;
import com.bukke.spring.member.domain.MemberPageInfo;
import com.bukke.spring.reservation.domain.PageInfo;
import com.bukke.spring.reservation.domain.Reservation;
import com.bukke.spring.reservation.service.ReservationService;
import com.bukke.spring.shop.domain.Shop;
import com.google.gson.Gson;
import com.google.gson.JsonIOException;

@Controller
public class ReservationController {
   
   @Autowired
   private ReservationService reService;
   
   @Autowired
   private ActivityService aService;
   
   @Autowired
   private BukkeClassService bService;

   // 예약 전체목록 jsp 이동
      @RequestMapping(value="reservationList.com", method=RequestMethod.GET)
      public ModelAndView reservationListView(ModelAndView mv, 
                                    @RequestParam(value="page", required=false) Integer page,HttpSession session) {
         int currentPage = (page != null) ? page : 1;
         int listCount = reService.getListCount();
         PageInfo pi = ReservationPagination.getPageInfo(currentPage, listCount);
         Shop loginShopper = (Shop)session.getAttribute("loginShopper");
         String shopId = loginShopper.getShopId();
         ArrayList<BukkeClass> bList = bService.printReservation();
         ArrayList<Reservation> reservationList = reService.printAllReservation(pi,shopId);
         
         if(!reservationList.isEmpty()) {
            System.out.println(reservationList);
            mv.addObject("reservationList", reservationList);
            mv.addObject("pi", pi);
            mv.setViewName("shop/shopReservationList");
         }else {
            mv.addObject("msg", "예약 관리 조회 실패");
            mv.setViewName("common/errorPage");
         }
         return mv;
      }
      
//      @ResponseBody
//      @RequestMapping(value="activityPaySuccess.com", method=RequestMethod.POST)
//      public void ActivityPaysuccess(@ModelAttribute Reservation reservation,
//    		  						HttpServletResponse response) {
//      }
//      public void ClassPaysuccess() {
//      }
      
      // 예약 상세정보 jsp 이동 (모든회원)
      @RequestMapping(value="reservationDetail.com", method =RequestMethod.GET )
      public String reservationDetailView(@RequestParam("reservationId")String reservationId,HttpSession session) {
         return null;
      }
      
      // *예약 검색기능 메소드
      public String reservationSearch() {
         return null;
      }
      
     
      // * 액티비티 예약하기 (모든회원 - 예약 등록)
      @RequestMapping(value="ActivityReservation.com")
      public String insertActivityReservation(@RequestParam("activityNo") int activityNo,
    		  								Model model,
    		  								HttpSession session) {
    	  
    	  Member loginMember = (Member)session.getAttribute("loginMember"); 
    	  String reservationId = loginMember.getMemberId();
    	  Reservation reservation = new Reservation();
    	  
    	  reservation.setActivityNo(activityNo);
    	  reservation.setReservationId(reservationId);
        
    	  int result = reService.insertActivityReservation(reservation);
    	  
    	  if(result > 0) {
    		  return "redirect:activityDetail.com?activityNo="  + activityNo;
    	  } else {
    		  model.addAttribute("msg", "액티비티 예약하기 실패");
  			return "common/errorPage";
    	  }
      }
      
      
      // * 액티비티 예약 취소하기 (모든회원 - 예약 취소)
      @RequestMapping(value="deleteActivityReservation.com")
      public String deleteActivityReservation(@RequestParam("activityNo") int activityNo,
										Model model,
										HttpSession session) {
    	Member loginMember = (Member)session.getAttribute("loginMember"); 
  		String reservationId = loginMember.getMemberId();
  		Reservation reservation = new Reservation();
  	  
	  	  reservation.setActivityNo(activityNo);
	  	  reservation.setReservationId(reservationId);
	  	  
	  	  Reservation actRes = reService.printOneActivityReservation(reservation);
	  	  model.addAttribute("reservationNo", actRes.getReservationNo());
	  	  System.out.println("actRes 는 ? " + actRes);
	  	  int result = reService.deleteActivityReservation(actRes);
	  	  System.out.println("result : " + result);
	  	  if(result > 0) {
	  		return "redirect:activityDetail.com?activityNo=" + activityNo;
	  	  } else {
	  		model.addAttribute("msg", "액티비티 예약 취소 실패");
			return "common/errorPage";
	  	  }
      }
      
      // * 액티비티 거절한 수업 다시 예약하기 
      @RequestMapping(value="reActivityReservation.com")
      public String reInsertActivityReservation(@RequestParam("activityNo") int activityNo,
    		  								Model model,
    		  								HttpSession session) {
    	  
    	  Member loginMember = (Member)session.getAttribute("loginMember"); 
    	  String reservationId = loginMember.getMemberId();
    	  Reservation reservation = new Reservation();
    	  
    	  reservation.setActivityNo(activityNo);
    	  reservation.setReservationId(reservationId);
        
    	  int result = reService.reInsertActivityReservation(reservation);
    	  
    	  if(result > 0) {
    		  return "redirect:activityDetail.com?activityNo="  + activityNo;
    	  } else {
    		  model.addAttribute("msg", "액티비티 예약하기 실패");
  			return "common/errorPage";
    	  }
      }
      
      
      // 클래스 예약하기
      @RequestMapping(value="BukkeClassReservation.com")
      public String insertBukkeClassReservation(@RequestParam("classNo") int classNo,
    		  									Model model,
    		  									HttpSession session) {
    	  Member loginMember = (Member)session.getAttribute("loginMember");
    	  String reservationId = loginMember.getMemberId();
    	  Reservation reservation = new Reservation();
    	  
    	  reservation.setClassNo(classNo);
    	  reservation.setReservationId(reservationId);
    	  
    	  int result = reService.registerClassReservation(reservation);
    	  
    	  if(result > 0) {
    		  return "redirect:bukkeClassDetailView.com?classNo=" + classNo;
    	  }else {
    		  model.addAttribute("msg", "클래스 예약 실패");
    		  return "common/errorPage";
    	  }
      }
      
      // 클래스 예약 취소하기
      @RequestMapping(value="deleteBukkeClassReservation.com")
      public String removeBukkeClassReservation(@RequestParam("classNo") int classNo,
    		  									Model model,
    		  									HttpSession session) {
    	  Member loginMember = (Member)session.getAttribute("loginMember");
    	  String reservationId = loginMember.getMemberId();
    	  Reservation reservation = new Reservation();
    	  
    	  reservation.setClassNo(classNo);
    	  reservation.setReservationId(reservationId);
    	  
    	  Reservation classRes = reService.printOneClassReservation(reservation);
    	  model.addAttribute("reservationNo", classRes.getReservationNo());
    	  System.out.println(classRes);
    	  int result = reService.removeClassReservation(classRes);
    	  
    	  if(result > 0) {
    		  return "redirect:bukkeClassDetailView.com?classNo=" + classNo;
    	  } else {
    		  model.addAttribute("msg", "클래스 예약 취소 실패");
    		  return "common/errorPage";
    	  }
      }
      
      ////////////////////////////////////////////// 예약 확인 logic
      
    //일반회원 예약 전체 조회하기
      @RequestMapping(value="myReservationList.com", method =RequestMethod.GET)
      public ModelAndView myReservation(ModelAndView mv,@RequestParam(value="page", required=false) Integer page,HttpSession session, @ModelAttribute Reservation reservation) {
         int currentPage = (page != null) ? page : 1;
          int listCount = reService.getListCount();
          PageInfo pi = ReservationPagination.getPageInfo(currentPage, listCount);
          Member loginMember = (Member)session.getAttribute("loginMember");
          
          String memberId = loginMember.getMemberId();
          int reListCountbyId = reService.getreListMyId(memberId);
          
          MemberPageInfo reservationPi = MemberPagination.getPageInfo(currentPage,reListCountbyId);
          
          ArrayList<Reservation> reList = reService.printMyreservationById(reservationPi,memberId);
          
          if(reList.isEmpty()) {
             mv.addObject("msg" ,"조회 실패입니다");
          }else {
            mv.addObject("reList",reList);
            mv.addObject("reservationPi",reservationPi);
            mv.setViewName("member/memberMyReservation");
          }
      return mv;
      }
      
     
      // 예약 여부
      @ResponseBody 
      @RequestMapping(value="reservationconfirm.com", method = RequestMethod.GET)
      public void confirmReservation(
            @ModelAttribute Reservation reservation, 
            HttpServletResponse response) throws Exception {
            
        // System.out.println(reservation.getReservationStatus());
            int confirm =0;
            int reject =0;
         if(reservation.getReservationStatus().equals("승인")) {
        	 // 예약상태를 꺼내와서 Y랑 일치하면
            confirm = reService.confirmReservaion(reservation);
            // 예약승인 로직으로
         }else {
            reject = reService.cancleReservation(reservation);
            //Y가 아닐 경우에는 예약 거절 로직으로
         }
         
         //int reservationNumber = reservation.getReservationNo();
         
         HashMap<String, Object> likeMap = new HashMap<String, Object>();
         
         // 02, 서울 
         // 031, 경기도
         // resultYn, "success"
         // resultStatus, "Y"
         
         if(confirm >0) {
            /* rStatus = reservation.getReservationStatus(); */
            likeMap.put("resultYn", "success");
            likeMap.put("resultStatus", "승인");
            
         }if(reject >0) {
            likeMap.put("resultYn", "success");
            likeMap.put("resultStatus", "거절");
         }
         
         
         new Gson().toJson(likeMap, response.getWriter());
      }
      // 예약 거절
      public String cancleReservation() {
         return null;
      }
      
      
}