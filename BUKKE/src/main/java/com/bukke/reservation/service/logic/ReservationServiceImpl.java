package com.bukke.reservation.service.logic;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.reservation.domain.Reservation;
import com.bukke.reservation.service.ReservationService;
import com.bukke.reservation.store.ReservationStore;

@Service
public class ReservationServiceImpl implements ReservationService{

	@Autowired
	private ReservationStore rStore;
	
	@Override
	public ArrayList<Reservation> printAllReservation() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Reservation PrintOneReservation(int reservationNo) {
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
