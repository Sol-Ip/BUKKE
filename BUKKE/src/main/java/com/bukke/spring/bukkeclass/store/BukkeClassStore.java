package com.bukke.spring.bukkeclass.store;

import java.util.ArrayList;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.domain.ClassSearch;
import com.bukke.spring.bukkeclass.domain.PageInfo;
import com.bukke.spring.review.domain.Review;

public interface BukkeClassStore {

	// 클래스 전체 조회 수
	public int selectListCount();
	
	// 클래스 전체목록 조회 (관리자-클래스 관리 메뉴)
	public ArrayList<BukkeClass> selectAllListBclass(PageInfo pi);
	
	// 클래스 상세정보
	public BukkeClass selectOneBclass(int classNo);

	// 클래스 검색 (일반회원, 업체회원)
	public ArrayList<BukkeClass> selectSearchListBclass(ClassSearch search);

	// 클래스 등록 (업체회원-클래스 등록 메뉴)
	public int insertBclass(BukkeClass bClass);

	 // 클래스 수정 (업체회원-클래스 수정 메뉴)
	public int updateBclass(BukkeClass bClass);

	// 클래스 삭제 (업체회원-클래스 삭제 메뉴)
	public int deleteBclass(int classNo);

	// 클래스에서 TOP3 리스트 보여주기
	public ArrayList<BukkeClass> selectTopThreeListBclass();

	// 예약에 클래스명 출력
	public ArrayList selectReservation();

	// 클래스 등록 시 상세분류 출력
	public ArrayList<BukkeClass> selectClassType(String classType);
	//클래스 선물 분류+상세분류로 리스트 출력
	public ArrayList<BukkeClass> selectGiftListBclass(BukkeClass bClass);


	
}
