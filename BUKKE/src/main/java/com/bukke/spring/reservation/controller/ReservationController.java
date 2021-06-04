package com.bukke.spring.reservation.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.service.BukkeClassService;
import com.bukke.spring.common.ReservationPagination;
import com.bukke.spring.reservation.domain.PageInfo;
import com.bukke.spring.reservation.domain.Reservation;
import com.bukke.spring.reservation.service.ReservationService;
import com.google.gson.Gson;
import com.google.gson.JsonIOException;

@Controller
public class ReservationController {
   
   @Autowired
   private ReservationService reService;
   
   @Autowired
   private BukkeClassService bService;

   // 예약 전체목록 jsp 이동
      @RequestMapping(value="reservationList.com", method=RequestMethod.GET)
      public ModelAndView reservationListView(ModelAndView mv, 
                                    @RequestParam(value="page", required=false) Integer page) {
         int currentPage = (page != null) ? page : 1;
         int listCount = reService.getListCount();
         PageInfo pi = ReservationPagination.getPageInfo(currentPage, listCount);
         
         ArrayList<BukkeClass> bList = bService.printReservation();
         ArrayList<Reservation> reservationList = reService.printAllReservation(pi);
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
      
      // 예약 상세정보 jsp 이동 (모든회원)
      public String reservationDetailView() {
         return null;
      }
      // *예약 검색기능 메소드
      public String reservationSearch() {
         return null;
      }
      // 예약 등록 jsp 이동 (업체회원)
      public String reservationEnrollView() {
         return null;
      }
      // *예약 등록기능 메소드
      public String reservationAdd() {
         return null;
      }
      // 예약 수정 jsp 이동 (업체회원)
      public String reservationModifyView() {
         return null;
      }
      // *예약 수정기능 메소드
      public String reservationUpdate() {
         return null;
      }
      // *예약 삭제기능 메소드
      public String reservationRemove() {
         return null;
      }
      // 예약 여부
      @ResponseBody 
      @RequestMapping(value="reservationconfirm.com", method = RequestMethod.GET)
      public void confirmReservation(
            @ModelAttribute Reservation reservation, 
            HttpServletResponse response) throws Exception {
            
         System.out.println(reservation.getReservationStatus());
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