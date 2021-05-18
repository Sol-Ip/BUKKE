package com.bukke.spring.reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bukke.spring.reservation.service.ReservationService;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService rService;

	// 예약 전체목록 jsp 이동 (관리자)
		@RequestMapping(value="")
		public String reservationListView() {
			return null;
		}
		// 예약 상세정보 jsp 이동 (모든회원)
		@RequestMapping(value="")
		public String reservationDetailView() {
			return null;
		}
		// *예약 검색기능 메소드
		@RequestMapping(value="")
		public String reservationSearch() {
			return null;
		}
		// 예약 등록 jsp 이동 (업체회원)
		@RequestMapping(value="")
		public String reservationEnrollView() {
			return null;
		}
		// *예약 등록기능 메소드
		@RequestMapping(value="")
		public String reservationAdd() {
			return null;
		}
		// 예약 수정 jsp 이동 (업체회원)
		@RequestMapping(value="")
		public String reservationModifyView() {
			return null;
		}
		// *예약 수정기능 메소드
		@RequestMapping(value="")
		public String reservationUpdate() {
			return null;
		}
		// *예약 삭제기능 메소드
		@RequestMapping(value="")
		public String reservationRemove() {
			return null;
		}
		
		// 예약 승인
		@RequestMapping(value="")
		public String confirmReservation() {
			return null;
		}
		
		// 예약 거절
		@RequestMapping(value="")
		public String cancleReservation() {
			return null;
		}
}
