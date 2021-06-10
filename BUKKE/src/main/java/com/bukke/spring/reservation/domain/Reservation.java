package com.bukke.spring.reservation.domain;

import java.sql.Date;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.bukkeclass.domain.BukkeClass;

public class Reservation {
	private int reservationNo; // 예약번호
	private int classNo; // 클래스번호
	private int activityNo; // 액티비티 번호
	private String reservationId; // 예약자
	private Date reservationDate; // 예약일
	private String reservationStatus; // 예약 승인여부
	private String payStatus; // 결제 승인여부
	// 추가 getter/setter
	private String reviewStatus; // 리뷰 상태
	private String commentStatus; // 댓글(삭제)여부
	
	private BukkeClass bukkeClass;
	
	private Activity activity;
	
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

	

	public Reservation(int reservationNo, int classNo, int activityNo, String reservationId, Date reservationDate,
			String reservationStatus, BukkeClass bukkeClass, Activity activity) {
		super();
		this.reservationNo = reservationNo;
		this.classNo = classNo;
		this.activityNo = activityNo;
		this.reservationId = reservationId;
		this.reservationDate = reservationDate;
		this.reservationStatus = reservationStatus;
		this.bukkeClass = bukkeClass;
		this.activity = activity;
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
	
	public String getReviewStatus() {
		return reviewStatus;
	}

	public void setReviewStatus(String reviewStatus) {
		this.reviewStatus = reviewStatus;
	}

	public String getCommentStatus() {
		return commentStatus;
	}

	public void setCommentStatus(String commentStatus) {
		this.commentStatus = commentStatus;
	}


	public BukkeClass getBukkeClass() {
		return bukkeClass;
	}

	public void setBukkeClass(BukkeClass bukkeClass) {
		this.bukkeClass = bukkeClass;
	}
	
	

	public String getPayStatus() {
		return payStatus;
	}


	public void setPayStatus(String payStatus) {
		this.payStatus = payStatus;
	}


	public Activity getActivity() {
		return activity;
	}


	public void setActivity(Activity activity) {
		this.activity = activity;
	}


	@Override
	public String toString() {
		return "Reservation [reservationNo=" + reservationNo + ", classNo=" + classNo + ", activityNo=" + activityNo
				+ ", reservationId=" + reservationId + ", reservationDate=" + reservationDate + ", reservationStatus="
				+ reservationStatus + ", payStatus=" + payStatus + ", reviewStatus=" + reviewStatus + ", commentStatus="
				+ commentStatus + ", bukkeClass=" + bukkeClass + ", activity=" + activity + "]";
	}


	
}

