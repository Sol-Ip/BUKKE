package com.bukke.schedule.store;

import java.util.ArrayList;

import com.bukke.schedule.domain.Schedule;

public interface ScheduleStore {

	public ArrayList<Schedule> printAllScheduleList(); //캘린더 내역 전체보기
	public Schedule selectOneSchedule(int scheduleNo); //캘린더 상세보기
	public int insertSchedule(Schedule schedule); //캘린더 등록
	public int deleteSchedule(int scheduleNo); //캘린더 삭제
}
