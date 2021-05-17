package com.bukke.bukkeclass.store;

import java.util.ArrayList;

import com.bukke.bukkeclass.domain.BukkeClass;
import com.bukke.bukkeclass.domain.BukkeClassPageInfo;

public interface BukkeClassStore {

	
	// 클래스 전체목록 조회 (관리자-클래스 관리 메뉴)
	public ArrayList<BukkeClass> selectAllList(BukkeClassPageInfo pi);
	
	// 클래스 상세정보
	public BukkeClass selectOne(int classNo);

	// 클래스 검색 (일반회원, 업체회원)
	public ArrayList<BukkeClass> selectSearchList(String searchValue);

	// 클래스 등록 (업체회원-클래스 등록 메뉴)
	public int insertBukkeClass(BukkeClass bClass);

	 // 클래스 수정 (업체회원-클래스 수정 메뉴)
	public int updateBukkeClass(BukkeClass bClass);

	// 클래스 삭제 (업체회원-클래스 삭제 메뉴)
	public int deleteBukkeClass(int classNo);
}
