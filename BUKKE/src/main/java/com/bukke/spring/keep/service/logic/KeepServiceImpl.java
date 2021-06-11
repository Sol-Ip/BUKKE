package com.bukke.spring.keep.service.logic;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.keep.domain.Keep;
import com.bukke.spring.keep.domain.KeepPageInfo;
import com.bukke.spring.keep.service.KeepService;
import com.bukke.spring.keep.store.KeepStore;

@Service
public class KeepServiceImpl implements KeepService {

	@Autowired
	private KeepStore kStore;
	
	/////////////// 전체
	
	// 찜 전체 갯수
	@Override
	public int getKeepListCount(String memberId) {
		return kStore.selectKeepListCount(memberId);
	}

	// 찜 전체 목록
	@Override
	public ArrayList<Keep> printAllKeepList(KeepPageInfo pi, String memberId) {
		return kStore.selectAllKeepList(pi, memberId);
	}

	
	/////////////// 클래스
	
	// 클래스 전체 갯수
	@Override
	public int getClassKeepListCount(String memberId) {
		return kStore.selectClassKeepListCount(memberId);
	}
	
	// 클래스 찜목록 조회
	@Override
	public ArrayList<Keep> printClassKeepList(KeepPageInfo piCla, String memberId) {
		return kStore.selectAllBukkeClassKeep(piCla, memberId);
	}
	
	// 클래스 찜 상세 보기
	@Override
	public Keep printClassKeep(Keep keep) {
		return kStore.selectOneClassKeep(keep);
	}

	// 클래스 찜 등록
	@Override
	public int insertBukkeClasstoKeep(Keep keep) {
		return kStore.insertBukkeClasstoKeep(keep);
	}

	// 클래스 찜 취소
	@Override
	public int updateBukkeClassfromKeep(Keep keep) {
		return kStore.deleteBukkeClassfromKeep(keep);
	}
	
	
	/////////////// 액티비티
	
	// 액티비티 전체 갯수
	@Override
	public int getActKeepListCount(String memberId) {
		return kStore.selectActivityKeepListCount(memberId);
	}
	
	// 액티비티 찜목록 조회
	@Override
	public ArrayList<Keep> printActivityKeepList(KeepPageInfo piAct, String memberId) {
		return kStore.selectAllActivityKeep(piAct, memberId);
	}
	
	// 액티비티 찜 상세
	@Override
	public Keep printActivityKeep(Keep keep) {
		return kStore.selectOneActivityKeep(keep);
	}
	
	// 액티비티 찜 등록
	@Override
	public int insertActivitytoKeep(Keep keep) {
		return kStore.insertActivitytoKeep(keep);
	}
	
	// 액티비티 찜 취소
	@Override
	public int updateActivityfromKeep(Keep keep) {
		return kStore.deleteActivityfromKeep(keep);
	}

	// 액티비티 해당 게시글 당 찜 갯수 
	@Override
	public int getActivityKeep(int activityNo) {
		return kStore.getActivityKeep(activityNo);
	}

}
