package com.bukke.spring.reservation.store;

import java.util.ArrayList;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.reservation.domain.PageInfo;
import com.bukke.spring.reservation.domain.Reservation;

public interface ReservationStore {
	public int selectLsitCount(); // 예약 전체수 조회수
	public ArrayList<Reservation> selectAllListReservation(PageInfo pi,String shopId); // 예약 전체목록 조회  
	public Reservation selectOneReservation(int reservationNo); // 예약 상세정보 조회
	public int makeReservation(); // 예약 하기 
	public int modifyReservation(); // 예약 수정
	public int deleteReservation(); // 예약 삭제
	public int confirmReservaion(Reservation reservation); // 예약 승인
	public int cancleReservation(Reservation reservation); // 예약 거절
	public int classCountReservation(String reservationId); //클래스 카운트
	public int actCountReservation(String reservationId); //액티비티 카운트
}
