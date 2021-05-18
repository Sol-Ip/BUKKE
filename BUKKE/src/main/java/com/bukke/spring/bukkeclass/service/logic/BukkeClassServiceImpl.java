package com.bukke.spring.bukkeclass.service.logic;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.domain.BukkeClassPageInfo;
import com.bukke.spring.bukkeclass.service.BukkeClassService;
import com.bukke.spring.bukkeclass.store.BukkeClassStore;

@Service
public class BukkeClassServiceImpl implements BukkeClassService {

	@Autowired
	private BukkeClassStore bStore;
	
	// 클래스 전체목록 조회 (관리자-클래스 관리 메뉴)
	@Override
	public ArrayList<BukkeClass> printAllBclass(BukkeClassPageInfo pi) {
		return null;
	}

	// 클래스 상세정보
	@Override
	public BukkeClass printOneBclass(int classNo) {
		return null;
	}

	// 클래스 검색 (일반회원, 업체회원)
	@Override
	public ArrayList<BukkeClass> searchBclass(String searchValue) {
		return null;
	}

	// 클래스 등록 (업체회원-클래스 등록 메뉴)
	@Override
	public int registerBclass(BukkeClass bClass) {
		return 0;
	}

	@Override
	public int modifyBclass(BukkeClass bClass) {
		// 클래스 수정 (업체회원-클래스 수정 메뉴)
		return 0;
	}

	// 클래스 삭제 (업체회원-클래스 삭제 메뉴)
	@Override
	public int removeBclass(int classNo) {
		return 0;
	}

}
