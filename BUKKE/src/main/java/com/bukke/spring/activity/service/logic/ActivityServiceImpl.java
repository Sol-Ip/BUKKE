package com.bukke.spring.activity.service.logic;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.activity.domain.ActivityPageInfo;
import com.bukke.spring.activity.domain.ActivitySearch;
import com.bukke.spring.activity.service.ActivityService;
import com.bukke.spring.activity.store.ActivityStore;
import com.bukke.spring.bukkeclass.domain.PageInfo;
import com.bukke.spring.member.domain.MemberPageInfo;
import com.bukke.spring.shop.controller.ShopPageInfo;

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

	@Override
	public ArrayList<Activity> printAllActivity() { // 액티비티 전체목록 조회 (관리자-액티비티 관리 메뉴) 페이징 미포함
		ArrayList<Activity> aList = aStore.selectAllActivityList();
		return aList;
	}
	
	@Override
	public ArrayList<Activity> printTopThreeActivity(String shopId) { // 액티비티 Top3
		ArrayList<Activity> aList = aStore.selectTopThreeActivityList(shopId);
		return aList;
	}

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
	public ArrayList<Activity> printActivityType(String activityType) { //액티비티 (분류 선택 시) 상세분류 출력
		return aStore.selectActivityType(activityType);
	}

	@Override
	public int modifyActivity(Activity activity) { // 액티비티 수정 (업체회원-액티비티 수정 메뉴)
		return aStore.updateActivity(activity);
	}

	@Override
	public int removeActivity(int activityNo) { // 액티비티 삭제 (업체회원-액티비티 삭제 메뉴)
		return aStore.deleteActivity(activityNo);
	}

	@Override
	public ArrayList<Activity> printKeepActivity() { // 찜 목록에 액티비티 출력
		return (ArrayList)aStore.selectKeepActivity();
	}

//	@Override
//	public ArrayList<Activity> printSearchAllList(String activitySearch) { //액티비티 검색(21.06.07)
//		return aStore.selectSearchAllList(activitySearch);
//	}

//	@Override
//	public ArrayList<Activity> searchActivity(ActivitySearch activitySearch) {
//		// TODO Auto-generated method stub
//		return null;
//	}

	@Override
	public ArrayList<Activity> printActivityTypeList(String activityType) { // 액티비티 타입에 따른 리스트 출력
		return aStore.selectActivityTypeList(activityType);
	}
	
	@Override
	public ArrayList<Activity> printActivityDetailTypeList(HashMap<String, String> actDetailMap) { // 액티비티 타입 후 디테일타입에 따른 리스트 출력
		return aStore.selectActivityDetailTypeList(actDetailMap);
	}

	@Override
	public int getListCountbyId(String memberId) {
		// TODO Auto-generated method stub
		return aStore.selectListCountbyId(memberId);
	}

	@Override
	public ArrayList<Activity> printAllActivityById(MemberPageInfo actPi, String memberId) {
		// TODO Auto-generated method stub
		return aStore.selectAllActivityListbyId(actPi,memberId);
	}

	@Override
	public int getListCountShop(String shopId) {
		// TODO Auto-generated method stub
		return aStore.getListCountShopId(shopId);
	}

	@Override
	public ArrayList<Activity> printAllActivityByShop(ShopPageInfo shopPi, String shopId) {
		// TODO Auto-generated method stub
		return aStore.selectShopActivityList(shopPi,shopId);

	}

	@Override
	public ArrayList<Activity> printHomeTWoActivityListDesc() { // 액티비티 최근 글 상위2개 목록
		ArrayList<Activity> twoActList = aStore.selectHomeTWoActivityListDesc();
		return twoActList;
	}

	@Override
	public ArrayList<Activity> printGiftActivity(Activity activity) {
		// TODO Auto-generated method stub
		return aStore.selectGiftListActivity(activity);
	}

//	//마이페이지 내 예약 확인 카운트
//	@Override
//	public int getactListMyId(String memberId) {
//		// TODO Auto-generated method stub
//		return aStore.selectListCountbyOneId(memberId);
//	}
//	//마이페이지 내 예약 확인 리스트
//	@Override
//	public ArrayList<Activity> printMyactById(MemberPageInfo actPi, String memberId) {
//		// TODO Auto-generated method stub
//		return aStore.selectAllactivityListOneId(actPi,memberId);
//	}

	



}
