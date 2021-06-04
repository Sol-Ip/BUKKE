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
	
	/////////////// 클래스
	
	// 클래스 찜목록 조회
	@Override
	public ArrayList<BukkeClass> classKeepList(String memberId) {
		return null;
	}

	// 클래스 찜 등록
	@Override
	public int addBukkeClasstoKeep(BukkeClass bClass) {
		return 0;
	}

	// 클래스 찜 취소
	@Override
	public int removeBukkeClassfromKeep(int keepNo) {
		return 0;
	}
	
	
	/////////////// 액티비티
	
	
	// 액티비티 찜목록 조회
	@Override
	public ArrayList<Activity> activityKeepList(String memberId) {
		return null;
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

	// 찜 갯수
	@Override
	public int getKeepListCount(String memberId) {
		return kStore.selectKeepListCount(memberId);
	}

	// 찜 목록
	@Override
	public ArrayList<Keep> printAllKeepList(KeepPageInfo pi, String memberId) {
		return kStore.selectAllKeepList(pi, memberId);
	}

	

	
}
