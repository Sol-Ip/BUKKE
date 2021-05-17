package com.bukke.bukkeclass.store.logic;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.bukkeclass.domain.BukkeClass;
import com.bukke.bukkeclass.domain.BukkeClassPageInfo;
import com.bukke.bukkeclass.store.BukkeClassStore;

@Repository
public class BukkeClassStoreLogic implements BukkeClassStore {

	@Autowired
	private SqlSessionTemplate session; 
	
	@Override
	public ArrayList<BukkeClass> selectAllList(BukkeClassPageInfo pi) {
		// 클래스 전체목록 조회 (관리자-클래스 관리 메뉴)
		return null;
	}

	@Override
	public BukkeClass selectOne(int classNo) {
		// 클래스 상세정보
		return null;
	}

	@Override
	public ArrayList<BukkeClass> selectSearchList(String searchValue) {
		// 클래스 검색 (일반회원, 업체회원)
		return null;
	}

	@Override
	public int insertBukkeClass(BukkeClass bClass) {
		// 클래스 등록 (업체회원-클래스 등록 메뉴)
		return 0;
	}

	@Override
	public int updateBukkeClass(BukkeClass bClass) {
		// 클래스 수정 (업체회원-클래스 수정 메뉴)
		return 0;
	}

	@Override
	public int deleteBukkeClass(int classNo) {
		// 클래스 삭제 (업체회원-클래스 삭제 메뉴)
		return 0;
	}

}
