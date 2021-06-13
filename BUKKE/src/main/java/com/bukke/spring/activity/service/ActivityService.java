package com.bukke.spring.activity.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.activity.domain.ActivityPageInfo;
import com.bukke.spring.activity.domain.ActivitySearch;
import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.keep.domain.KeepPageInfo;
import com.bukke.spring.member.domain.MemberPageInfo;
import com.bukke.spring.reservation.domain.Reservation;
import com.bukke.spring.shop.controller.ShopPageInfo;

public interface ActivityService {
	
	public int getListCount(); // 게시물 전체 수 카운트

	public ArrayList<Activity> printAllActivity(ActivityPageInfo pi); //액티비티 전체목록 조회 (관리자-액티비티 관리 메뉴) 페이징 포함

	public ArrayList<Activity> printAllActivity(); // 액티비티 전체목록 조회 (관리자-액티비티 관리 메뉴) 페이징 미포함

	public ArrayList<Activity> printTopThreeActivity(); // 액티비티 전체목록 조회 (관리자-액티비티 관리 메뉴) 페이징 미포함

	public ArrayList<Activity> searchActivity(ActivitySearch activitySearch); //액티비티 검색 (일반회원, 업체회원)

	public Activity printOneActivity(int activityNo); // 액티비티 상세정보

	public int registerActivity(Activity activity); // 액티비티 등록 (업체회원-액티비티 등록 메뉴)

	public int modifyActivity(Activity activity); // 액티비티 수정 (업체회원-액티비티 수정 메뉴)

	public int removeActivity(int activityNo); // 액티비티 삭제 (업체회원-액티비티 삭제 메뉴)

	public ArrayList<Activity> printActivityType(String activityType); // 액티비티 (분류 선택 시) 상세분류 출력

	public ArrayList<Activity> printKeepActivity(); // 찜 목록에 액티비티 출력

	//public ArrayList<Activity> printActivitySelectList(HashMap<String, String> activitySelect); // 액티비티 선택 시 리스트 출력(21.06.07)

	//public ArrayList<Activity> printSearchAllList(String search); //액티비티 검색(21.06.07)

	public ArrayList<Activity> printActivityTypeList(String activityType); // 액티비티 타입에 따른 리스트 출력

	public ArrayList<Activity> printActivityDetailTypeList(HashMap<String, String> actDetailMap); // 액티비티 타입 후 디테일타입에 따른 리스트 출력

	public int getListCountbyId(String memberId);

	public ArrayList<Activity> printAllActivityById(MemberPageInfo actPi, String memberId);

	public int getListCountShop(String shopId); //업체회원 마이페이지 카운트

	public ArrayList<Activity> printAllActivityByShop(ShopPageInfo shopPi, String shopId); // 업체회원 액티비티 확인

	public ArrayList<Activity> printHomeTWoActivityListDesc(); // 액티비티 최근 글 상위2개 목록



//	public int getactListMyId(String memberId); //마이페이지 내 예약 확인하기
//
//	public ArrayList<Activity> printMyactById(MemberPageInfo actPi, String memberId); //마이페이지 내 예약 확인하기


	
	
	
	

}
