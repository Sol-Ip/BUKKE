package com.bukke.spring.bukkeclass.service;

import java.util.ArrayList;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.domain.BukkeClassPageInfo;

public interface BukkeClassService {

	
	// 클래스 전체목록 조회 (관리자-클래스 관리 메뉴)
	public ArrayList<BukkeClass> printAllBclass(BukkeClassPageInfo pi);
	
	// 클래스 상세 정보
	public BukkeClass printOneBclass(int classNo);

	// 클래스 검색
	public ArrayList<BukkeClass> searchBclass(String searchValue);
	
	// 클래스 등록 (업체회원-클래스 등록 메뉴)
	public int registerBclass(BukkeClass bClass);
	
	// 클래스 수정 (업체회원-클래스 수정 메뉴)
	public int modifyBclass(BukkeClass bClass);
	
	// 클래스 삭제 (업체회원-클래스 삭제 메뉴)
	public int removeBclass(int classNo);
}
