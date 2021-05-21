package com.bukke.spring.reservation.service;

import java.util.ArrayList;

import com.bukke.spring.reservation.domain.Reservation;

public interface ReservationService {
	public ArrayList<Reservation> printAllReservation(); //예약 전체목록 조회  
	//public ArrayList<Reservation> printAll(ActivityPageInfo pi);  //페이징
	public Reservation PrintOneReservation(int reservationNo); // 예약 상세정보 조회
	public int makeReservation(); //예약 하기 
	public int modifyReservation(); //예약 수정
	public int removeReservation(); //예약 삭제
	public int confirmReservaion(); // 예약 승인
	public int cancleReservation(); // 예약 거절
}
