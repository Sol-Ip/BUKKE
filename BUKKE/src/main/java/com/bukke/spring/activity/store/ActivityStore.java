package com.bukke.spring.activity.store;

import java.util.ArrayList;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.activity.domain.ActivityPageInfo;
import com.bukke.spring.activity.domain.ActivitySearch;

public interface ActivityStore {
	
	public int selectListCount(); // 게시물 전체 수 카운트
	
	public ArrayList<Activity> selectAllActivityList(ActivityPageInfo pi); //액티비티 전체목록 조회 (관리자-액티비티 관리 메뉴) 페이징 포함

	public ArrayList<Activity> selectAllActivityList(); // 액티비티 전체목록 조회 (관리자-액티비티 관리 메뉴) 페이징 미포함

	public Activity selectOneActivity(int activityNo); // 액티비티 상세정보

	public ArrayList<Activity> searchActivityList(ActivitySearch activitySearch); //액티비티 검색 (일반회원, 업체회원)

	public int insertActivity(Activity activity); // 액티비티 등록 (업체회원-액티비티 등록 메뉴)

	public int updateActivity(Activity activity); // 액티비티 수정 (업체회원-액티비티 수정 메뉴)

	public int deleteActivity(int activityNo); // 액티비티 삭제 (업체회원-액티비티 삭제 메뉴)


}
