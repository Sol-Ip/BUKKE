package com.bukke.spring.activity.service.logic;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.activity.domain.ActivityPageInfo;
import com.bukke.spring.activity.domain.ActivitySearch;
import com.bukke.spring.activity.service.ActivityService;
import com.bukke.spring.activity.store.ActivityStore;
import com.bukke.spring.bukkeclass.domain.PageInfo;

@Service
public class ActivityServiceImpl implements ActivityService {
	
	@Autowired
	public ActivityStore aStore;
	
	@Override
	public int getListCount() { // 게시물 전체 수 카운트
		return aStore.selectListCount();
	}

	@Override
	public ArrayList<Activity> printAllActivity(ActivityPageInfo pi) { // 액티비티 전체목록 조회 (관리자-액티비티 관리 메뉴) 페이징 포함
		return aStore.selectAllActivityList(pi);
	}

//	@Override
//	public ArrayList<Activity> printAllActivity() { // 액티비티 전체목록 조회 (관리자-액티비티 관리 메뉴) 페이징 미포함
//		return null;
//	}

	@Override
	public Activity printOneActivity(int activityNo) { // 액티비티 상세정보
		return aStore.selectOneActivity(activityNo);
	}

	@Override
	public ArrayList<Activity> searchActivity(ActivitySearch activitySearch) { //액티비티 검색 (일반회원, 업체회원)
		return aStore.searchActivityList(activitySearch);
	}

	@Override
	public int registerActivity(Activity activity) { // 액티비티 등록 (업체회원-액티비티 등록 메뉴)
		return aStore.insertActivity(activity);
	}

	@Override
	public int modifyActivity(Activity activity) { // 액티비티 수정 (업체회원-액티비티 수정 메뉴)
		return aStore.updateActivity(activity);
	}

	@Override
	public int removeActivity(int activityNo) { // 액티비티 삭제 (업체회원-액티비티 삭제 메뉴)
		return aStore.deleteActivity(activityNo);
	}



}
