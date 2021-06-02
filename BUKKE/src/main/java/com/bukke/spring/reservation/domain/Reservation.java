package com.bukke.spring.reservation.domain;

import java.sql.Date;

import com.bukke.spring.bukkeclass.domain.BukkeClass;

public class Reservation {
	private int reservationNo; // 예약번호
	private int classNo; // 클래스번호
	private int activityNo; // 액티비티 번호
	private String reservationId; // 예약자
	private Date reservationDate; // 예약일
	private String reservationStatus; // 예약 승인여부
	
	private BukkeClass bukkeClass;
	
	public Reservation() {}
	

	public Reservation(int reservationNo, int classNo, int activityNo, String reservationId, Date reservationDate,
			String reservationStatus, BukkeClass bukkeClass) {
		super();
		this.reservationNo = reservationNo;
		this.classNo = classNo;
		this.activityNo = activityNo;
		this.reservationId = reservationId;
		this.reservationDate = reservationDate;
		this.reservationStatus = reservationStatus;
		this.bukkeClass = bukkeClass;
	}


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

	public BukkeClass getBukkeClass() {
		return bukkeClass;
	}

	public void setBukkeClass(BukkeClass bukkeClass) {
		this.bukkeClass = bukkeClass;
	}

	@Override
	public String toString() {
		return "Reservation [reservationNo=" + reservationNo + ", classNo=" + classNo + ", activityNo=" + activityNo
				+ ", reservationId=" + reservationId + ", reservationDate=" + reservationDate + ", reservationStatus="
				+ reservationStatus + ", bukkeClass=" + bukkeClass + "]";
	}

	
}
