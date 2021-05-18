package com.bukke.spring.reservation.store.logic;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.spring.reservation.domain.Reservation;
import com.bukke.spring.reservation.store.ReservationStore;

@Repository
public class ReservationStoreLogic implements ReservationStore {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<Reservation> selectAllReservationList() { // 예약 전체목록 조회  
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Reservation selectOneReservation(int reservationNo) { // 예약 상세정보 조회
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int makeReservation() { // 예약 하기 
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyReservation() { // 예약 수정
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteReservation() { // 예약 삭제
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int confirmReservaion() { // 예약 승인
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int cancleReservation() { // 예약 거절
		// TODO Auto-generated method stub
		return 0;
	}

	

}
