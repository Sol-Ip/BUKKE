package com.bukke.spring.schedule.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bukke.spring.activity.service.ActivityService;
import com.bukke.spring.bukkeclass.service.BukkeClassService;
import com.bukke.spring.member.domain.Member;
import com.bukke.spring.reservation.domain.Reservation;
import com.bukke.spring.reservation.service.ReservationService;
import com.bukke.spring.schedule.service.ScheduleService;

public class ScheduleController {

	@Autowired
	private ScheduleService sService;
	
	@Autowired
	private BukkeClassService bService;
	
	@Autowired
	private ActivityService aService;
	
	@Autowired
	private ReservationService reService;
//	
//	// 마이페이지 스케쥴 관리(풀캘린더)
//    @RequestMapping(value = "scheduleTest.com", method = RequestMethod.GET)
//    public String scheduleView() {
//       return "member/scheduleTest";
//
//    }   
	
    //마이페이지 스케쥴 목록 불러오기
    @RequestMapping(value = "scheduleTest.com", method = RequestMethod.GET)
    	public ModelAndView scheduleView(HttpSession session, ModelAndView mv,  @ModelAttribute Reservation reservation) {
    	Member loginMember = (Member)session.getAttribute("loginMember");
    	String memberId = loginMember.getMemberId();
    	ArrayList<Reservation> reList = reService.printMyreservationById(memberId);
    	
    	mv.addObject("reList",reList);
    	mv.setViewName("member/scheduleTest");
    	 return mv;
    }   
}
