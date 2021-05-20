package com.bukke.spring.activity.store.logic;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.activity.domain.ActivityPageInfo;
import com.bukke.spring.activity.store.ActivityStore;

@Repository
public class ActivityStoreLogic implements ActivityStore {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<Activity> selectAllActivityList(ActivityPageInfo pi) { //액티비티 전체목록 조회 (관리자-액티비티 관리 메뉴) 페이징 포함
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Activity> selectAllActivityList() { // 액티비티 전체목록 조회 (관리자-액티비티 관리 메뉴) 페이징 미포함
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Activity selectOneActivity(int activityNo) { // 액티비티 상세정보
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Activity> searchActivityList(String activityValue) { //액티비티 검색 (일반회원, 업체회원)
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertActivity(Activity activity) { // 액티비티 등록 (업체회원-액티비티 등록 메뉴)
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateActivity(Activity activity) { // 액티비티 수정 (업체회원-액티비티 수정 메뉴)
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteActivity(int classNo) { // 액티비티 삭제 (업체회원-액티비티 삭제 메뉴)
		// TODO Auto-generated method stub
		return 0;
	}

}