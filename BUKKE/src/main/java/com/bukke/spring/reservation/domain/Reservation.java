package com.bukke.spring.reservation.domain;

import java.sql.Date;

public class Reservation {
	private int reservationNo; // 예약번호
	private int classNo; // 클래스번호
	private String className; // 클래스 이름
	private int activityNo; // 액티비티 번호
	private String reservationId; // 예약자
	private Date reservationDate; // 예약일
	private String reservationStatus; // 예약 승인여부
	
	public Reservation() {}

	public int getReservationNo() {
		return reservationNo;
	}
	public void setReservationNo(int reservationNo) {
		this.reservationNo = reservationNo;
	}
	public int getClassNo() {
		return classNo;
	}
	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}
	
	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public int getActivityNo() {
		return activityNo;
	}
	public void setActivityNo(int activityNo) {
		this.activityNo = activityNo;
	}
	public String getReservationId() {
		return reservationId;
	}
	public void setReservationId(String reservationId) {
		this.reservationId = reservationId;
	}
	public Date getReservationDate() {
		return reservationDate;
	}
	public void setReservationDate(Date reservationDate) {
		this.reservationDate = reservationDate;
	}
	public String getReservationStatus() {
		return reservationStatus;
	}
	public void setReservationStatus(String reservationStatus) {
		this.reservationStatus = reservationStatus;
	}

	@Override
	public String toString() {
		return "Reservation [reservationNo=" + reservationNo + ", classNo=" + classNo + ", activityNo=" + activityNo
				+ ", reservationId=" + reservationId + ", reservationDate=" + reservationDate + ", reservationStatus="
				+ reservationStatus + "]";
	}
	
}
