package com.bukke.spring.schedule.service;

import java.util.ArrayList;

import com.bukke.spring.schedule.domain.Schedule;

public interface ScheduleService {
	
	public ArrayList<Schedule> printSchedule(String MemberID); //캘린더조회
	public Schedule printOneSchedule(int scheduleNo); //캘린더 상세보기
	public int registerSchedule(Schedule schedule); //캘린더 등록
	public int removeSchedule(int scheduleNo); //캘린더 삭제
}
