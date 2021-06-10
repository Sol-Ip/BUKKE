package com.bukke.spring.schedule.domain;

import java.sql.Date;

public class Schedule {
 
//	캘린더에서 쓸겁니다!!
	
	private int classNo; // 클래스번호
	private int activityNo; // 액티비티번호
	private String title; // 장소(주소)
	private Date startDate; // 시작날짜
	private Date endDate; // 시작날짜
	private String reservationStatus;
	private String color;
	
	public Schedule() {}

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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getReservationStatus() {
		return reservationStatus;
	}

	public void setReservationStatus(String reservationStatus) {
		this.reservationStatus = reservationStatus;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	@Override
	public String toString() {
		return "Schedule [classNo=" + classNo + ", activityNo=" + activityNo + ", title=" + title + ", startDate="
				+ startDate + ", endDate=" + endDate + ", reservationStatus=" + reservationStatus + ", color=" + color
				+ "]";
	}
	
}
