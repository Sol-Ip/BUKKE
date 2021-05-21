package com.bukke.spring.keep.service;

import java.util.ArrayList;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.bukkeclass.domain.BukkeClass;

public interface KeepService {
	
	/**
	 * 클래스 찜목록 조회
	 */
	public ArrayList<BukkeClass> classKeepList(String memberId);
	/**
	 * 액티비티 찜목록 조회
	 */
	public ArrayList<Activity> activityKeepList(String memberId);
	/**
	 * 클래스 찜목록 추가
	 */
	public int addBukkeClasstoKeep(BukkeClass bClass);
	/**
	 * 액티비티 찜목록 추가
	 */
	public int addActivitytoKeep(Activity activity);
	/**
	 * 클래스 찜목록 삭제
	 */
	public int removeBukkeClassfromKeep(int keepNo);
	/**
	 * 액티비티 찜목록 삭제
	 */
	public int removeActivityfromKeep(int keepNo);
}
