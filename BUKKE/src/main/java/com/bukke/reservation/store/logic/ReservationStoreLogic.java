package com.bukke.reservation.store.logic;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.reservation.domain.Reservation;
import com.bukke.reservation.store.ReservationStore;

@Repository
public class ReservationStoreLogic implements ReservationStore {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<Reservation> selectAllList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Reservation selectOne(int reservationNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int makeReservation() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyReservation() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeReservation() {
		// TODO Auto-generated method stub
		return 0;
	}

	

}
