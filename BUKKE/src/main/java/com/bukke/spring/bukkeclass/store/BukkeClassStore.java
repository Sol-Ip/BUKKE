package com.bukke.spring.bukkeclass.store;

import java.util.ArrayList;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.domain.ClassSearch;
import com.bukke.spring.bukkeclass.domain.PageInfo;

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

	
}
