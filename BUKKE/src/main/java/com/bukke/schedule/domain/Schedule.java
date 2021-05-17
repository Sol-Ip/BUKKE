package com.bukke.schedule.domain;

public class Schedule {

	private int scheduleNo; //캘린더번호
	private String place; // 장소
	
	public Schedule() {}

	public int getScheduleNo() {
		return scheduleNo;
	}

	public void setScheduleNo(int scheduleNo) {
		this.scheduleNo = scheduleNo;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	@Override
	public String toString() {
		return "Schedule [scheduleNo=" + scheduleNo + ", place=" + place + "]";
	};
	
	
}
