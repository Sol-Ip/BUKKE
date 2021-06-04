package com.bukke.spring.bukkeclass.service.logic;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.domain.ClassSearch;
import com.bukke.spring.bukkeclass.domain.PageInfo;
import com.bukke.spring.bukkeclass.service.BukkeClassService;
import com.bukke.spring.bukkeclass.store.BukkeClassStore;
import com.bukke.spring.review.domain.Review;

@Service
public class BukkeClassServiceImpl implements BukkeClassService {

	@Autowired
	private BukkeClassStore bStore;
	
	@Override
	public int getListCount() {
		return bStore.selectListCount();
	}
	
	// 클래스 전체목록 조회 (관리자-클래스 관리 메뉴)
	@Override
	public ArrayList<BukkeClass> printAllBclass(PageInfo pi) {
		return bStore.selectAllListBclass(pi);
	}

	// 클래스 상세정보
	@Override
	public BukkeClass printOneBclass(int classNo) {
		return bStore.selectOneBclass(classNo);
	}

	// 클래스 검색 (일반회원, 업체회원)
	@Override
	public ArrayList<BukkeClass> searchBclass(ClassSearch search) {
		return bStore.selectSearchListBclass(search);
	}

	// 클래스 등록 (업체회원-클래스 등록 메뉴)
	@Override
	public int registerBclass(BukkeClass bClass) {
		return bStore.insertBclass(bClass);
	}

	// 클래스 상세분류 출력
	@Override
	public ArrayList<BukkeClass> printClassType(String classType) {
		return bStore.selectClassType(classType);
	}
	
	// 클래스 수정 (업체회원-클래스 수정 메뉴)
	@Override
	public int modifyBclass(BukkeClass bClass) {
		return bStore.updateBclass(bClass);
	}

	// 클래스 삭제 (업체회원-클래스 삭제 메뉴)
	@Override
	public int removeBclass(int classNo) {
		return bStore.deleteBclass(classNo);
	}

	// 클래스 TOP3 리스트 보여주기
	@Override
	public ArrayList<BukkeClass> printTopThreeBclass() {
		ArrayList<BukkeClass> bList = bStore.selectTopThreeListBclass();
		return bList;
	}

	// 예약목록에 클래스명 출력
	@Override
	public ArrayList<BukkeClass> printReservation() {
		return (ArrayList)bStore.selectReservation();
	}

	@Override
	public ArrayList<BukkeClass> printGiftBclass(BukkeClass bClass) {
		// TODO Auto-generated method stub
		return bStore.selectGiftListBclass(bClass);
	}



}
