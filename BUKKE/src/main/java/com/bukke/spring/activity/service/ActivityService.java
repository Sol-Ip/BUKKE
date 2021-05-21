package com.bukke.spring.activity.service;

import java.util.ArrayList;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.activity.domain.ActivityPageInfo;

public interface ActivityService {
	
	public ArrayList<Activity> printAllActivity(ActivityPageInfo pi); //액티비티 전체목록 조회 (관리자-액티비티 관리 메뉴) 페이징 포함

	public ArrayList<Activity> printAllActivity(); // 액티비티 전체목록 조회 (관리자-액티비티 관리 메뉴) 페이징 미포함

	public Activity printOneActivity(int activityNo); // 액티비티 상세정보

	public ArrayList<Activity> searchActivity(String activityValue); //액티비티 검색 (일반회원, 업체회원)

	public int registerActivity(Activity activity); // 액티비티 등록 (업체회원-액티비티 등록 메뉴)

	public int modifyActivity(Activity activity); // 액티비티 수정 (업체회원-액티비티 수정 메뉴)

	public int removeActivity(int classNo); // 액티비티 삭제 (업체회원-액티비티 삭제 메뉴)

}
