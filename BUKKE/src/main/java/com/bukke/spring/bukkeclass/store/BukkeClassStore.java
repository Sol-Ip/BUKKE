package com.bukke.spring.bukkeclass.store;

import java.util.ArrayList;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.domain.ClassSearch;
import com.bukke.spring.bukkeclass.domain.PageInfo;
import com.bukke.spring.member.domain.MemberPageInfo;
import com.bukke.spring.review.domain.Review;
import com.bukke.spring.shop.controller.ShopPageInfo;

public interface BukkeClassStore {

	// 클래스 전체 조회 수
	public int selectListCount();
	
	public int selectFlowerListCount();

	public int selectArtListCount();

	public int selectBeautyListCount();

	public int selectMusicListCount();

	public int selectPhotoListCount();
	
	// 클래스 전체목록 조회 (관리자-클래스 관리 메뉴)
	public ArrayList<BukkeClass> selectAllListBclass(PageInfo pi);
	
	public ArrayList<BukkeClass> selectFlowerBclass(PageInfo pi);

	public ArrayList<BukkeClass> selectArtBclass(PageInfo pi);

	public ArrayList<BukkeClass> selectBeautyBclass(PageInfo pi);

	public ArrayList<BukkeClass> selectMusicBclass(PageInfo pi);

	public ArrayList<BukkeClass> selectPhotoBclass(PageInfo pi);
	
	//클래스 목록 조회(페이징 없음)
	public ArrayList<BukkeClass> selectAllListBclass();
	
	// 클래스 상세정보
	public BukkeClass selectOneBclass(int classNo);

	// 클래스 검색 (일반회원, 업체회원)
	public ArrayList<BukkeClass> selectSearchListBclass(ClassSearch search);

	// 클래스 등록 (업체회원-클래스 등록 메뉴)
	public int insertBclass(BukkeClass bClass);

	 // 클래스 수정 (업체회원-클래스 수정 메뉴)
	public int updateBclass(BukkeClass bClass);

	// 클래스 삭제 (업체회원-클래스 삭제 메뉴)
	public int deleteBclass(int classNo);

	// 클래스에서 TOP3 리스트 보여주기
	public ArrayList<BukkeClass> selectTopThreeListBclass();

	// 예약에 클래스명 출력
	public ArrayList selectReservation();

	//클래스 선물 분류+상세분류로 리스트 출력
	public ArrayList<BukkeClass> selectGiftListBclass(BukkeClass bClass);

	public int selectListCountbyId(String memberId);

	public ArrayList<BukkeClass> selectAllListBclassbyId(MemberPageInfo classPi, String memberId);

	public int selectListcountbyMyId(String memberId); //마이페이지 내 예약 조회

	public ArrayList<BukkeClass> selectAllListBclassbyMyId(MemberPageInfo classPi, String memberId); //마이페이지 내 예약 조회

	public int selectCountShop(String shopId); //업체 마이페이지 클래스카운트

	public ArrayList<BukkeClass> selectAllListBclassbyMyShop(ShopPageInfo shopPi, String shopId); //업체 마이페이지 클래스 확인

	public ArrayList<BukkeClass> selectHomeFourClassListDesc(); // 클래스 최근 글 상위4개 목록

	public ArrayList<BukkeClass> selectHomeTwoArtClassList();

	public ArrayList<BukkeClass> selectHomeTwoPicClassList();

}
