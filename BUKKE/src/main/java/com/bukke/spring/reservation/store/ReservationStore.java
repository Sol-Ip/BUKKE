package com.bukke.spring.reservation.store;

import java.util.ArrayList;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.member.domain.MemberPageInfo;
import com.bukke.spring.reservation.domain.PageInfo;
import com.bukke.spring.reservation.domain.Reservation;

public interface ReservationStore {
	public int selectLsitCount(); // 예약 전체수 조회수
	public ArrayList<Reservation> selectAllListReservation(PageInfo pi,String shopId); // 예약 전체목록 조회  
	public Reservation selectOneReservation(int reservationNo); // 예약 상세정보 조회

	public int insertActivityReservation(Reservation reservation); // 액티비티 예약하기(등록)
	public Reservation selectOneActivityReservation(Reservation reservation); // 액티비티 예약하기 확인
	public int deleteActivityReservation(Reservation reservation); // 액티비티 예약취소(삭제)
	public int reInsertActivityReservation(Reservation reservation); // 사업자가 거절한 액티비티 다시 예약하기
	
	public int insertClassReservation(Reservation reservation); // 클래스 예약하기
	public Reservation selectOneClassReservation(Reservation reservation); // 클래스 예약 확인
	public int deleteClassReservation(Reservation reservation); // 클래스 예약 취소하기
	public int reInsertClassReservation(Reservation reservation); // 클래스 다시 예약하기
	
	public int confirmReservaion(Reservation reservation); // 예약 승인
	public int cancleReservation(Reservation reservation); // 예약 거절
	public int classCountReservation(String memberId); //클래스 카운트
	public int actCountReservation(String memberId); //액티비티 카운트
	
	public int reservationCountMyId(String memberId); // 사용자 예약확인(조회) 카운트
	
	// 사용자 예약확인(조회)
	public ArrayList<Reservation> reservationListMyId(MemberPageInfo reservationPi, String memberId);
	// 캘린더 예약확인(조회)
	public ArrayList<Reservation> reservationListMyId(String memberId);
	
	//결제 상태변경(액티비티)
	public int ChangeStatus(Reservation reservation);
	//결제 상태변경(클래스)
	public int ChangeStatusClass(Reservation reservation);
	//예약 전체 카운트 (업체)
	public int ShopTotalCount(String shopId);
	//예약 대기 카운트 (업체)
	public int ShopWaitCount(String shopId);
	
	
}
