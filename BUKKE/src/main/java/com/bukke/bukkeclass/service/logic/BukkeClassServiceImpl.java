package com.bukke.bukkeclass.service.logic;

import java.util.ArrayList;

import com.bukke.bukkeclass.domain.BukkeClass;
import com.bukke.bukkeclass.domain.BukkeClassPageInfo;
import com.bukke.bukkeclass.service.BukkeClassService;

public class BukkeClassServiceImpl implements BukkeClassService {

	@Override
	public ArrayList<BukkeClass> printAll(BukkeClassPageInfo pi) {
		// 클래스 전체목록 조회 (관리자-클래스 관리 메뉴) 페이징 포함
		return null;
	}

	@Override
	public ArrayList<BukkeClass> printAll() {
		// 클래스 전체목록 조회 (관리자-클래스 관리 메뉴) 페이징 미포함
		return null;
	}

	@Override
	public BukkeClass printOne(int classNo) {
		// 클래스 상세정보
		return null;
	}

	@Override
	public ArrayList<BukkeClass> searchBukkeClass(String searchValue) {
		// 클래스 검색 (일반회원, 업체회원)
		return null;
	}

	@Override
	public int registerBukkeClass(BukkeClass bClass) {
		// 클래스 등록 (업체회원-클래스 등록 메뉴)
		return 0;
	}

	@Override
	public int modifyBukkeClass(BukkeClass bClass) {
		// 클래스 수정 (업체회원-클래스 수정 메뉴)
		return 0;
	}

	@Override
	public int removeBukkeClass(int classNo) {
		// 클래스 삭제 (업체회원-클래스 삭제 메뉴)
		return 0;
	}

}
