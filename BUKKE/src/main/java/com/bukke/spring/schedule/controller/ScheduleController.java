package com.bukke.spring.schedule.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bukke.spring.activity.service.ActivityService;
import com.bukke.spring.bukkeclass.service.BukkeClassService;
import com.bukke.spring.member.domain.Member;
import com.bukke.spring.reservation.domain.Reservation;
import com.bukke.spring.reservation.service.ReservationService;
import com.bukke.spring.schedule.domain.Schedule;
import com.bukke.spring.schedule.service.ScheduleService;

@Controller
public class ScheduleController {

	@Autowired
	private ScheduleService sService;
	
	@Autowired
	private BukkeClassService bService;
	
	@Autowired
	private ActivityService aService;
	
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
    	ArrayList<Schedule> sList = sService.printSchedule(memberId);
    	for(int i = 0; i < sList.size(); i++) {
    		String PayStatus = sList.get(i).getPayStatus();
    		int classNo = sList.get(i).getClassNo();
    		int activityNo = sList.get(i).getActivityNo();
    		String title = sList.get(i).getTitle();
    		
    		if(PayStatus.equals("Y")) {
    			sList.get(i).setTitle("<결제완료>"+title);
    			if(classNo == 0 && activityNo !=0) {
    				sList.get(i).setColor("#4472c4");
    			}else {
    				sList.get(i).setColor("#70ad47");
    			}
    			
    		} else {
    			sList.get(i).setTitle("<결제대기>"+title);
    			if(classNo == 0) {
    				sList.get(i).setColor("#cc0066");
    			}else {
    				sList.get(i).setColor("#e26714");
    			}
    		}
    	}
    	
    	mv.addObject("sList",sList);
    	mv.setViewName("member/scheduleTest");
    	return mv;
    }   
}
