package com.bukke.reservation.domain;

import java.sql.Date;

public class Reservation {
	private int reservationNo; // 예약번호
	private int classNo; // 클래스번호
	private int activityNo; // 액티비티 번호
	private int reservationId; // 예약자
	private Date reservationDate; // 예약일
	private String reservationApproval; // 예약 승인여부
	
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
	public int getActivityNo() {
		return activityNo;
	}
	public void setActivityNo(int activityNo) {
		this.activityNo = activityNo;
	}
	public int getReservationId() {
		return reservationId;
	}
	public void setReservationId(int reservationId) {
		this.reservationId = reservationId;
	}
	public Date getReservationDate() {
		return reservationDate;
	}
	public void setReservationDate(Date reservationDate) {
		this.reservationDate = reservationDate;
	}
	public String getReservationApproval() {
		return reservationApproval;
	}
	public void setReservationApproval(String reservationApproval) {
		this.reservationApproval = reservationApproval;
	}

	@Override
	public String toString() {
		return "Reservation [reservationNo=" + reservationNo + ", classNo=" + classNo + ", activityNo=" + activityNo
				+ ", reservationId=" + reservationId + ", reservationDate=" + reservationDate + ", reservationApproval="
				+ reservationApproval + "]";
	}
	
}
