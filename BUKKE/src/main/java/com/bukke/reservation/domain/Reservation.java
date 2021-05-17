package com.bukke.reservation.domain;

import java.sql.Date;

public class Reservation {
	private int reservationNo; // 예약번호
	private int reservationId; // 예약자
	private Date reservationDate; // 예약일
	private String reservationApproval; // 예약 승인여부
	
	public Reservation() {
		// TODO Auto-generated constructor stub
	}

	public int getReservationNo() {
		return reservationNo;
	}

	public void setReservationNo(int reservationNo) {
		this.reservationNo = reservationNo;
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
		return "Reservation [reservationNo=" + reservationNo + ", reservationId=" + reservationId + ", reservationDate="
				+ reservationDate + ", reservationApproval=" + reservationApproval + "]";
	}
	
	
}
