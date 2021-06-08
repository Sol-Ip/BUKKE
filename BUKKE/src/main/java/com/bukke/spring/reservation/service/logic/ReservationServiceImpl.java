package com.bukke.spring.reservation.service.logic;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.reservation.domain.PageInfo;
import com.bukke.spring.reservation.domain.Reservation;
import com.bukke.spring.reservation.service.ReservationService;
import com.bukke.spring.reservation.store.ReservationStore;

@Service
public class ReservationServiceImpl implements ReservationService{

	@Autowired
	private ReservationStore reStore;
	
	// 예약 게시물 전체수 조회수
	@Override
	public int getListCount() {
		return reStore.selectLsitCount();
	}
	
	// 예약 전체 목록 보기
	@Override
	public ArrayList<Reservation> printAllReservation(PageInfo pi,String shopId) {
		return reStore.selectAllListReservation(pi,shopId);
	}

	// 예약 상세 보기
	@Override
	public Reservation PrintOneReservation(int reservationNo) {
		// TODO Auto-generated method stub
		return null;
	}

	// 예약하기
	@Override
	public int makeReservation() {
		// TODO Auto-generated method stub
		return 0;
	}

	// 예약 수정하기
	@Override
	public int modifyReservation() {
		// TODO Auto-generated method stub
		return 0;
	}

	// 예약 취소
	@Override
	public int removeReservation() {
		// TODO Auto-generated method stub
		return 0;
	}

	// 예약 승인
	@Override
	public int confirmReservaion(Reservation reservation) {
		return reStore.confirmReservaion(reservation);
	}

	 // 예약 거절
	@Override
	public int cancleReservation(Reservation reservation) {
		return reStore.cancleReservation(reservation);
	}
	//클래스 카운트
	@Override
	public int printclassCount(String memberId) {
		return reStore.classCountReservation(memberId);
	}
	//액티비티 카운트
	@Override
	public int printActCount(String memberId) {
		return reStore.actCountReservation(memberId);
	}
	
	





	
}
