package com.bukke.spring.keep.store;

import java.util.ArrayList;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.keep.domain.Keep;
import com.bukke.spring.keep.domain.KeepPageInfo;

public interface KeepStore {

	/**
	 * 클래스 찜목록 조회
	 */
	public ArrayList<BukkeClass> selectClassKeep(String memberId);
	
	/**
	 * 클래스 찜목록 추가
	 */
	public int insertBukkeClasstoKeep(BukkeClass bClass);
	
	/**
	 * 클래스 찜목록 삭제
	 */
	public int deleteBukkeClassfromKeep(int keepNo);
	
	//////////////////////////////////// 
	
	/**
	 * 액티비티 찜목록 조회
	 */
	public ArrayList<Activity> selectActivityKeep(String memberId);
	
	/**
	 * 액티비티 찜 상세
	 */
	public Keep selectOneActivityKeep(Keep keep);
	
	
	/**
	 * 액티비티 찜목록 추가
	 */
	public int insertActivitytoKeep(Keep keep);
	
	/**
	 * 액티비티 찜목록 삭제
	 */
	public int deleteActivityfromKeep(Keep keep);
	
	/**
	 * 찜 갯수
	 */
	public int selectKeepListCount(String memberId);

	/**
	 * 찜 목록
	 */
	public ArrayList<Keep> selectAllKeepList(KeepPageInfo pi, String memberId);
	
}
