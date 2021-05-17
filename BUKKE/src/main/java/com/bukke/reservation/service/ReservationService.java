package com.bukke.reservation.service;

import java.util.ArrayList;

import com.bukke.reservation.domain.Reservation;

public interface ReservationService {
	public ArrayList<Reservation> printAll(); //예약 전체목록 조회  
	//public ArrayList<Reservation> printAll(ActivityPageInfo pi);  //페이징
	public Reservation PrintOne(int reservationNo); // 예약 상세정보 조회
	public int makeReservation(); //예약 하기 
	public int modifyReservation(); //예약 수정
	public int removeReservation(); //예약 삭제
}
