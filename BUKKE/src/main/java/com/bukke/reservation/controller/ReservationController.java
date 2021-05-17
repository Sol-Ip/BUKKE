package com.bukke.reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bukke.reservation.service.ReservationService;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService rService;

	// 예약 전체목록 jsp 이동 (관리자)
		@RequestMapping(value="")
		public String ReservationListView() {
			return null;
		}
		// 예약 상세정보 jsp 이동 (모든회원)
		@RequestMapping(value="")
		public String ReservationDetailView() {
			return null;
		}
		// *예약 검색기능 메소드
		@RequestMapping(value="")
		public String ReservationSearch() {
			return null;
		}
		// 예약 등록 jsp 이동 (업체회원)
		@RequestMapping(value="")
		public String ReservationEnrollView() {
			return null;
		}
		// *예약 등록기능 메소드
		@RequestMapping(value="")
		public String ReservationAdd() {
			return null;
		}
		// 예약 수정 jsp 이동 (업체회원)
		@RequestMapping(value="")
		public String ReservationModifyView() {
			return null;
		}
		// *예약 수정기능 메소드
		@RequestMapping(value="")
		public String ReservationUpdate() {
			return null;
		}
		// *예약 삭제기능 메소드
		@RequestMapping(value="")
		public String ReservationRemove() {
			return null;
		}
}
