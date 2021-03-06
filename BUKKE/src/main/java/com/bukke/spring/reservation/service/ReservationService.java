package com.bukke.spring.reservation.service;

import java.util.ArrayList;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.member.domain.MemberPageInfo;
import com.bukke.spring.reservation.domain.PageInfo;
import com.bukke.spring.reservation.domain.Reservation;

public interface ReservationService {
	public int getListCount(); // 게시물 전체 수 조회수
	public ArrayList<Reservation> printAllReservation(PageInfo pi,String shopId); // 예약 전체 조회
	public Reservation PrintOneReservation(int reservationNo); // 예약 상세정보 조회
	
	
	public int insertActivityReservation(Reservation reservation); // 액티비티 예약하기(등록)
	public Reservation printOneActivityReservation(Reservation reservation); // 액티비티 예약하기 확인
	public int deleteActivityReservation(Reservation reservation); // 액티비티 예약취소(삭제)
	public int reInsertActivityReservation(Reservation reservation); // 사업자가 거절한 액티비티 다시 예약하기
	
	public int registerClassReservation(Reservation reservation); // 클래스 예약하기
	public Reservation printOneClassReservation(Reservation reservation); // 클래스 예약 확인
	public int removeClassReservation(Reservation reservation); // 클래스 예약 취소
	public int reRegisterClassReservation(Reservation reservation); // 사업자가 거절한 클래스 다시 예약하기
	
	public int confirmReservaion(Reservation reservation); // 예약 승인
	public int cancleReservation(Reservation reservation); // 예약 거절
	
	public int printclassCount(String memberId); //클래스 카운트
	public int printActCount(String memberId); //액티비티 카운트
	
	
	public int getreListMyId(String memberId); // 사용자 예약확인(조회) 카운트
	
	// 사용자 예약확인(조회)
	public ArrayList<Reservation> printMyreservationById(MemberPageInfo reservationPi, String memberId);
	
	// 캘린더 예약확인(조회)
	public ArrayList<Reservation> printMyreservationById(String memberId);
	
	//결제상태 변경(액티비티)
	public int ChangeStatus(Reservation reservation);
	//결제상태 변경(클래스)
	public int ChangeStatusClass(Reservation reservation);
	
	//예약 전체 수 카운트(업체)
	public int getreTotalCount(String shopId);
	//예약 대기 카운트 (업체)
	public int getreWaitCount(String shopId);
	
	
}
