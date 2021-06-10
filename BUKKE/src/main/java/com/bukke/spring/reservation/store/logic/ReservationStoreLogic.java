package com.bukke.spring.reservation.store.logic;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.member.domain.MemberPageInfo;
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
		return null;
	}


	// 액티비티 예약하기(등록)
	@Override
	public int insertActivityReservation(Reservation reservation) {
		return sqlSession.insert("reservationMapper.insertActivityReservation", reservation);
	}

	// 액티비티 예약하기 확인
	@Override
	public Reservation selectOneActivityReservation(Reservation reservation) {
		return sqlSession.selectOne("reservationMapper.selectOneReservation", reservation);
	}

	// 액티비티 예약취소(삭제)
	@Override
	public int deleteActivityReservation(Reservation reservation) {
		return sqlSession.delete("reservationMapper.deleteActivityReservation", reservation);
	}
	
	// 사업자가 거절한 액티비티 다시 예약하기
	@Override
	public int reInsertActivityReservation(Reservation reservation) {
		return sqlSession.update("reservationMapper.reInsertActivityReservation", reservation);
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

	@Override
	public int reservationCountMyId(String memberId) { // 사용자 예약확인(조회) 카운트
		  return sqlSession.selectOne("reservationMapper.reservationCountMyId",memberId);
	}

	// 사용자 예약확인(조회)
	@Override
	public ArrayList<Reservation> reservationListMyId(MemberPageInfo reservationPi, String memberId) {
		 int offset = (reservationPi.getCurrentPage() - 1) * reservationPi.getBoardLimit();
	      RowBounds rowBounds = new RowBounds(offset, reservationPi.getBoardLimit());
	      return (ArrayList)sqlSession.selectList("reservationMapper.reservationListMyId", memberId, rowBounds);

	}

	// 캘린더 예약확인(조회)
	@Override
	public ArrayList<Reservation> reservationListMyId(String memberId) {
	      return (ArrayList)sqlSession.selectList("reservationMapper.reservationListMyId", memberId);

	}

	@Override
	public int ChangeStatus(Reservation reservation) {
		// TODO Auto-generated method stub
		return sqlSession.update("reservationMapper.changeStatus", reservation);
	}

	@Override
	public int ChangeStatusClass(Reservation reservation) {
		return sqlSession.update("reservationMapper.changeStatusClass", reservation);
	}
	


}
