package com.bukke.spring.keep.store;

import java.util.ArrayList;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.keep.domain.Keep;
import com.bukke.spring.keep.domain.KeepPageInfo;

public interface KeepStore {
	
	//////////////////////////////////// 전체

	/**
	 * 전체 찜 갯수
	 */
	public int selectKeepListCount(String memberId);

	/**
	 * 전체 찜 목록
	 */
	public ArrayList<Keep> selectAllKeepList(KeepPageInfo pi, String memberId);
	
	//////////////////////////////////// 클래스
	
	/**
	 * 클래스 찜 갯수
	 */
	public int selectClassKeepListCount(String memberId);
	
	/**
	 * 클래스 찜목록 조회
	 */
	public ArrayList<Keep> selectAllBukkeClassKeep(KeepPageInfo piCla, String memberId);
	
	/**
	 * 클래스 찜 상세
	 */
	public Keep selectOneBukkeClassKeep(Keep keep);
	
	/**
	 * 클래스 찜목록 추가
	 */
	public int insertBukkeClasstoKeep(Keep keep);
	
	/**
	 * 클래스 찜목록 삭제
	 */
	public int deleteBukkeClassfromKeep(Keep keep);
	
	//////////////////////////////////// 액티비티
	
	/**
	 * 액티비티 찜 갯수
	 */
	public int selectActivityKeepListCount(String memberId);
	
	/**
	 * 액티비티 찜목록 조회
	 */
	public ArrayList<Keep> selectAllActivityKeep(KeepPageInfo piAct,String memberId);
	
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
	 * 액티비티 해당 게시글 당 찜 갯수
	 */
	public int getActivityKeep(int activityNo);
	
	
}
