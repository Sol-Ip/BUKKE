package com.bukke.spring.keep.service;

import java.util.ArrayList;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.keep.domain.Keep;
import com.bukke.spring.keep.domain.KeepPageInfo;

public interface KeepService {
	
	// 전체
	/**
	 * 전체 찜 리스트 갯수(페이징)
	 */
	public int getKeepListCount(String memberId);
	/**
	 * 액티비티 찜 총 리스트 
	 */
	public ArrayList<Keep> printAllKeepList(KeepPageInfo piAct, String memberId);
	
	// 클래스
	/**
	 * 클래스 찜 리스트 갯수(페이징)
	 */
	public int getClassKeepListCount(String memberId);
	
	/**
	 * 클래스 찜목록 조회
	 */
	public ArrayList<Keep> printClassKeepList(KeepPageInfo piCla, String memberId);
	
	/**
	 * 클래스 찜 등록
	 */
	public int insertBukkeClasstoKeep(Keep keep);
	
	/**
	 * 클래스 찜 취소
	 */
	public int updateBukkeClassfromKeep(Keep keep);
	
	//-----------------------------------------------
	
	// 액티비티

	/**
	 * 액티비티 찜 리스트 갯수(페이징)
	 */
	public int getActKeepListCount(String memberId);
	
	/**
	 * 액티비티 찜목록 조회
	 */
	public ArrayList<Keep> printActivityKeepList(KeepPageInfo pi, String memberId);
	
	/**
	 * 액티비티 찜 조회
	 */
	public Keep printActivityKeep(Keep keep);
	
	/**
	 * 액티비티 찜 등록
	 */
	public int insertActivitytoKeep(Keep keep);
	
	/**
	 * 액티비티 찜 취소
	 */
	public int updateActivityfromKeep(Keep keep);
	

	
	
}
