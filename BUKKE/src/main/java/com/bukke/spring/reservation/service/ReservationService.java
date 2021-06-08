package com.bukke.spring.reservation.service;

import java.util.ArrayList;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.reservation.domain.PageInfo;
import com.bukke.spring.reservation.domain.Reservation;

public interface ReservationService {
	public int getListCount(); // 게시물 전체 수 조회수
	public ArrayList<Reservation> printAllReservation(PageInfo pi,String shopId); // 예약 전체 조회
	public Reservation PrintOneReservation(int reservationNo); // 예약 상세정보 조회
	public int makeReservation(); //예약 하기 
	public int modifyReservation(); //예약 수정
	public int removeReservation(); //예약 삭제
	public int confirmReservaion(Reservation reservation); // 예약 승인
	public int cancleReservation(Reservation reservation); // 예약 거절
	
	public int printclassCount(String reservationId); //클래스 카운트
	public int printActCount(String reservationId); //액티비티 카운트
	
	
}
