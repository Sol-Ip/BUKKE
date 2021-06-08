package com.bukke.spring.reservation.store.logic;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.reservation.domain.PageInfo;
import com.bukke.spring.reservation.domain.Reservation;
import com.bukke.spring.reservation.store.ReservationStore;

@Repository
public class ReservationStoreLogic implements ReservationStore {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 예약 전체수 조회수
	@Override
	public int selectLsitCount() {
		return sqlSession.selectOne("reservationMapper.selectListCount");
	}

	// 예약 목록 전체보기
	@Override
	public ArrayList<Reservation> selectAllListReservation(PageInfo pi,String shopId) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("reservationMapper.selectAllList", shopId, rowBounds);
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
	public int confirmReservaion(Reservation reservation) { // 예약 승인
		return sqlSession.update("reservationMapper.confirmReservation", reservation);
	}

	@Override
	public int cancleReservation(Reservation reservation) { // 예약 거절
		return sqlSession.update("reservationMapper.rejectReservation", reservation);
	}

	@Override
	public int classCountReservation(String memberId) { //클래스 카운트
		return sqlSession.selectOne("reservationMapper.classCountReservation", memberId);
	}

	@Override
	public int actCountReservation(String memberId) { //액티비티 카운트
		return sqlSession.selectOne("reservationMapper.actCountReservation", memberId);
	}



}
