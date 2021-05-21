package com.bukke.spring.reservation.store;

import java.util.ArrayList;

import com.bukke.spring.reservation.domain.Reservation;

public interface ReservationStore {
	public ArrayList<Reservation> selectAllReservationList(); // 예약 전체목록 조회  
	//public ArrayList<Reservation> printAll(ActivityPageInfo pi);  // 페이징
	public Reservation selectOneReservation(int reservationNo); // 예약 상세정보 조회
	public int makeReservation(); // 예약 하기 
	public int modifyReservation(); // 예약 수정
	public int deleteReservation(); // 예약 삭제
	public int confirmReservaion(); // 예약 승인
	public int cancleReservation(); // 예약 거절
}
