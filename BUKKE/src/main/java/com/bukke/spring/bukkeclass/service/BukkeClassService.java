package com.bukke.spring.bukkeclass.service;

import java.util.ArrayList;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.domain.ClassSearch;
import com.bukke.spring.bukkeclass.domain.PageInfo;
import com.bukke.spring.member.domain.MemberPageInfo;
import com.bukke.spring.review.domain.Review;
import com.bukke.spring.shop.controller.ShopPageInfo;

public interface BukkeClassService {

	// 게시물 전체 수 조회수
	public int getListCount();
	
	// 클래스 전체목록 조회 (관리자-클래스 관리 메뉴)
	public ArrayList<BukkeClass> printAllBclass(PageInfo pi);
	
	// 클래스 전체목록 조회 (페이징 없음)
	public ArrayList<BukkeClass> printAllBclass();
		
	public int getClassFlowerListCount();

	public int getClassArtListCount();

	public int getBeautyListCount();

	public int getMusicListCount();

	public int getPhotoListCount();

	public ArrayList<BukkeClass> printFlowerBclass(PageInfo piFlower);

	public ArrayList<BukkeClass> printArtBclass(PageInfo piArt);

	public ArrayList<BukkeClass> printBeautyBclass(PageInfo piBeauty);

	public ArrayList<BukkeClass> printMusicBclass(PageInfo piMusic);

	public ArrayList<BukkeClass> printPhotoBclass(PageInfo piPhoto);
	
	// 클래스 상세 정보
	public BukkeClass printOneBclass(int classNo);

	// 클래스 검색
	public ArrayList<BukkeClass> searchBclass(ClassSearch search);
	
	// 클래스 등록 (업체회원-클래스 등록 메뉴)
	public int registerBclass(BukkeClass bClass);
	
	// 클래스 수정 (업체회원-클래스 수정 메뉴)
	public int modifyBclass(BukkeClass bClass);
	
	// 클래스 삭제 (업체회원-클래스 삭제 메뉴)
	public int removeBclass(int classNo);

	// 클래스 TOP3 리스트 보여주기
	public ArrayList<BukkeClass> printTopThreeBclass();

	// 예약에 클래스 명 출력
	public ArrayList<BukkeClass> printReservation();

	//선물하기 클래스 분류+상세분류로 출력
	public ArrayList<BukkeClass> printGiftBclass(BukkeClass bClass);

	public int getListCountbyId(String memberId);

	public ArrayList<BukkeClass> printAllbClassById(MemberPageInfo classPi, String memberId);

	//마이페이지 내 예약 확인하기
	public int getclassListMyId(String memberId);
	
	//마이페이지 내 예약 확인하기
	public ArrayList<BukkeClass> printMyclassById(MemberPageInfo classPi, String memberId);
	
	//업체회원 마이페이지 클래스 카운트
	public int getListCountShopId(String shopId);
	
	//업체회원 마이페이지 클래스 확인하기
	public ArrayList<BukkeClass> printAllbClassByShop(ShopPageInfo shopPi, String shopId);

	// 클래스 최근 글 상위4개 목록
	public ArrayList<BukkeClass> printHomeFourClassListDesc();
	// 클래스 미술 
	public ArrayList<BukkeClass> printHomeTwoArtClassList();
	// 클래스 사진
	public ArrayList<BukkeClass> printHomeTwoPicClassList();

}
