package com.bukke.spring.bukkeclass.service;

import java.util.ArrayList;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.domain.ClassSearch;
import com.bukke.spring.bukkeclass.domain.PageInfo;
import com.bukke.spring.review.domain.Review;

public interface BukkeClassService {

	// 게시물 전체 수 조회수
	public int getListCount();
	
	// 클래스 전체목록 조회 (관리자-클래스 관리 메뉴)
	public ArrayList<BukkeClass> printAllBclass(PageInfo pi);
	
	// 클래스 상세 정보
	public BukkeClass printOneBclass(int classNo);

	// 클래스 검색
	public ArrayList<BukkeClass> searchBclass(ClassSearch search);
	
	// 클래스 등록 (업체회원-클래스 등록 메뉴)
	public int registerBclass(BukkeClass bClass);
	
	// 클래스 수정 (업체회원-클래스 수정 메뉴)
	public int modifyBclass(BukkeClass bClass);
	
	// 클래스 삭제 (업체회원-클래스 삭제 메뉴)
	public int removeBclass(int classNo);

	// 클래스 TOP3 리스트 보여주기
	public ArrayList<BukkeClass> printTopThreeBclass();

	// 예약에 클래스 명 출력
	public ArrayList<BukkeClass> printReservation();

	//선물하기 클래스 분류+상세분류로 출력
	public ArrayList<BukkeClass> printGiftBclass(BukkeClass bClass);



}
