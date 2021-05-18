package com.bukke.spring.keep.service.logic;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.keep.service.KeepService;
import com.bukke.spring.keep.store.KeepStore;

@Service
public class KeepServiceImpl implements KeepService {

	@Autowired
	private KeepStore kStore;
	
	@Override
	public ArrayList<BukkeClass> classKeepList(String memberId) {
		// 클래스 찜목록 조회
		return null;
	}

	@Override
	public ArrayList<Activity> activityKeepList(String memberId) {
		// 액티비티 찜목록 조회
		return null;
	}

	@Override
	public int addBukkeClasstoKeep(BukkeClass bClass) {
		// 클래스 찜목록 추가
		return 0;
	}

	@Override
	public int addActivitytoKeep(Activity activity) {
		// 액티비티 찜목록 추가
		return 0;
	}

	@Override
	public int removeBukkeClassfromKeep(int keepNo) {
		// 클래스 찜목록 삭제
		return 0;
	}

	@Override
	public int removeActivityfromKeep(int keepNo) {
		// 액티비티 찜목록 삭제
		return 0;
	}

}
