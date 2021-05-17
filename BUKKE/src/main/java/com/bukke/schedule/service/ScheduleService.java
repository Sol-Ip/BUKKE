package com.bukke.schedule.service;

import java.util.ArrayList;

import com.bukke.schedule.domain.Schedule;

public interface ScheduleService {
	
	public ArrayList<Schedule> printAllSchedule(); //캘린더 내역 전체보기
	public Schedule printOneSchedule(int scheduleNo); //캘린더 상세보기
	public int registerSchedule(Schedule schedule); //캘린더 등록
	public int removeSchedule(int scheduleNo); //캘린더 삭제
}
