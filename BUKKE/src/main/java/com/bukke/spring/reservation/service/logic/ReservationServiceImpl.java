package com.bukke.spring.reservation.service.logic;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.member.domain.MemberPageInfo;
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

	// 액티비티 예약하기(등록)
	@Override
	public int insertActivityReservation(Reservation reservation) {
		return reStore.insertActivityReservation(reservation);
	}

	// 액티비티 예약하기 확인
	@Override
	public Reservation printOneActivityReservation(Reservation reservation) {
		return reStore.selectOneActivityReservation(reservation);
	}

	// 액티비티 예약취소(삭제)
	@Override
	public int deleteActivityReservation(Reservation reservation) {
		return reStore.deleteActivityReservation(reservation);
	}
	
	// 사업자가 거절한 액티비티 다시 예약하기
	@Override
	public int reInsertActivityReservation(Reservation reservation) {
		return reStore.reInsertActivityReservation(reservation);
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

	// 사용자 예약확인(조회) 카운트
	@Override
	public int getreListMyId(String memberId) {
		return reStore.reservationCountMyId(memberId);
	}

	// 사용자 예약확인(조회)
	@Override
	public ArrayList<Reservation> printMyreservationById(MemberPageInfo reservationPi, String memberId) {
		 return reStore.reservationListMyId(reservationPi, memberId);
	}

	
	
	

	
}
