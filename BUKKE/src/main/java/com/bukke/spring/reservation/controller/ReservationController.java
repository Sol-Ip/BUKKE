package com.bukke.spring.reservation.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bukke.spring.common.ReservationPagination;
import com.bukke.spring.reservation.domain.PageInfo;
import com.bukke.spring.reservation.domain.Reservation;
import com.bukke.spring.reservation.service.ReservationService;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService reService;

	// 예약 전체목록 jsp 이동
		@RequestMapping(value="reservationList.com", method=RequestMethod.GET)
		public ModelAndView reservationListView(ModelAndView mv,
												@RequestParam(value="page", required=false) Integer page) {
			int currentPage = (page != null) ? page : 1;
			int listCount = reService.getListCount();
			PageInfo pi = ReservationPagination.getPageInfo(currentPage, listCount);
			
			ArrayList<Reservation> reservationList = reService.printAllReservation(pi);
			if(!reservationList.isEmpty()) {
				mv.addObject("reservationList", reservationList);
				mv.addObject("pi", pi);
				mv.setViewName("shop/shopReservation");
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
		// 예약 승인
		public String confirmReservation() {
			return null;
		}
		// 예약 거절
		public String cancleReservation() {
			return null;
		}
}
