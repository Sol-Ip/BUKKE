package com.bukke.bukkeclass.service.logic;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.bukkeclass.domain.BukkeClass;
import com.bukke.bukkeclass.domain.BukkeClassPageInfo;
import com.bukke.bukkeclass.service.BukkeClassService;
import com.bukke.bukkeclass.store.BukkeClassStore;

@Service
public class BukkeClassServiceImpl implements BukkeClassService {

	@Autowired
	private BukkeClassStore bStore;
	
	// 클래스 전체목록 조회 (관리자-클래스 관리 메뉴)
	@Override
	public ArrayList<BukkeClass> printAll(BukkeClassPageInfo pi) {
		return null;
	}

	// 클래스 상세정보
	@Override
	public BukkeClass printOne(int classNo) {
		return null;
	}

	// 클래스 검색 (일반회원, 업체회원)
	@Override
	public ArrayList<BukkeClass> searchBukkeClass(String searchValue) {
		return null;
	}

	// 클래스 등록 (업체회원-클래스 등록 메뉴)
	@Override
	public int registerBukkeClass(BukkeClass bClass) {
		return 0;
	}

	@Override
	public int modifyBukkeClass(BukkeClass bClass) {
		// 클래스 수정 (업체회원-클래스 수정 메뉴)
		return 0;
	}

	// 클래스 삭제 (업체회원-클래스 삭제 메뉴)
	@Override
	public int removeBukkeClass(int classNo) {
		return 0;
	}

}
