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
	@RequestMapping(value = "reservationList.com", method = RequestMethod.GET)
	public ModelAndView reservationListView(ModelAndView mv,
			@RequestParam(value = "page", required = false) Integer page) {
		int currentPage = (page != null) ? page : 1;
		int listCount = reService.getListCount();
		PageInfo pi = ReservationPagination.getPageInfo(currentPage, listCount);

		ArrayList<BukkeClass> bList = bService.printReservation();
		ArrayList<Reservation> reservationList = reService.printAllReservation(pi);
		if (!reservationList.isEmpty()) {
			System.out.println(reservationList);
			mv.addObject("reservationList", reservationList);
			mv.addObject("pi", pi);
			mv.setViewName("shop/shopReservationList");
		} else {
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
	/*
	 * // 예약 여부
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping(value="reservationconfirm.com", method = RequestMethod.GET)
	 * public String confirmReservation(@ModelAttribute Reservation reservation) {
	 * 
	 * System.out.println(reservation.getReservationNo());
	 * 
	 * int confirm = reService.confirmReservaion(reservation);
	 * 
	 * 
	 * 
	 * System.out.println("confirm은 : " +confirm);
	 * System.out.println(reservation.toString());
	 * 
	 * String reservationStatus = ""; int reservationNumber =
	 * reservation.getReservationNo();
	 * 
	 * reservation.setReservationStatus("Y"); HashMap<String, Object> likeMap = new
	 * HashMap<String, Object>();
	 * 
	 * if(confirm >0) { rStatus = reservation.getReservationStatus();
	 * System.out.println("성공?"); int reservationNo = reservationNumber;
	 * reservationStatus= "Y"; String revStatus = reservationStatus;
	 * 
	 * return "success"; }else { System.out.println("실패?"); return
	 * "common/errorPage"; } }
	 */

	
	@RequestMapping(value = "reservationconfirm.com", method = RequestMethod.GET)
	public void confirmReservation(@ModelAttribute Reservation reservation, HttpServletResponse response) throws JsonIOException, IOException {

		String revStatus = reservation.getReservationStatus();
		if(revStatus == null) {
			System.out.println("revStatus가 널이네?");
		}
		System.out.println(revStatus);
		HashMap<String, Object> likeMap = new HashMap<String, Object>();
		int confirm;
		int reservationNo = reservation.getReservationNo();
		
		System.out.println(reservation.toString());

		String reservationStatus = "";
		

		reservation.setReservationStatus("Y");
		if(revStatus.equals("Y")) {
			confirm = reService.cancleReservation(reservation);
			revStatus="N";
       } else {
    	   confirm = reService.confirmReservaion(reservation);
    	   revStatus="Y";
       }

		if (confirm > 0) {
			
			System.out.println("성공?");
			
			revStatus= "Y";
			
		
		} else {
			System.out.println("실패?");
			
		}
		System.out.println("revStatus는!? " +revStatus);
		likeMap.put("reservationNo", reservationNo);
		likeMap.put("reservationStatus", revStatus);
		new Gson().toJson(likeMap, response.getWriter());
	}

	// 예약 거절
	public String cancleReservation() {
		return null;
	}
}
