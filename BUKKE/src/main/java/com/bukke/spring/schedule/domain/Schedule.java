package com.bukke.schedule.domain;

public class Schedule {

	private int scheduleNo; // 캘린더번호
	private int classNo; // 클래스번호
	private int activityNo; // 액티비티번호
	private String place; // 장소(주소)
	private String scheduleStatus; // 캘린더여부
	
	public Schedule() {}

	public int getScheduleNo() {
		return scheduleNo;
	}
	public void setScheduleNo(int scheduleNo) {
		this.scheduleNo = scheduleNo;
	}
	public int getClassNo() {
		return classNo;
	}
	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}
	public int getActivityNo() {
		return activityNo;
	}
	public void setActivityNo(int activityNo) {
		this.activityNo = activityNo;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getScheduleStatus() {
		return scheduleStatus;
	}
	public void setScheduleStatus(String scheduleStatus) {
		this.scheduleStatus = scheduleStatus;
	}

	@Override
	public String toString() {
		return "Schedule [scheduleNo=" + scheduleNo + ", classNo=" + classNo + ", activityNo=" + activityNo + ", place="
				+ place + ", scheduleStatus=" + scheduleStatus + "]";
	}
	
}
