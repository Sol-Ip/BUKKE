package com.bukke.keep.store;

import java.util.ArrayList;

import com.bukke.activity.domain.Activity;
import com.bukke.bukkeclass.domain.BukkeClass;

public interface KeepStore {

	/**
	 * 클래스 찜목록 조회
	 */
	public ArrayList<BukkeClass> selectClassKeep(String memberId);
	/**
	 * 액티비티 찜목록 조회
	 */
	public ArrayList<Activity> selectActivityKeep(String memberId);
	/**
	 * 클래스 찜목록 추가
	 */
	public int insertBukkeClasstoKeep(BukkeClass bClass);
	/**
	 * 액티비티 찜목록 추가
	 */
	public int insertActivitytoKeep(Activity activity);
	/**
	 * 클래스 찜목록 삭제
	 */
	public int deleteBukkeClassfromKeep(int keepNo);
	/**
	 * 액티비티 찜목록 삭제
	 */
	public int deleteActivityfromKeep(int keepNo);
}
