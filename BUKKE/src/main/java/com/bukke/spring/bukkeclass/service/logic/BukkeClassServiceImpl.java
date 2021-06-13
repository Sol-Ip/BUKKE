package com.bukke.spring.bukkeclass.service.logic;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.domain.ClassSearch;
import com.bukke.spring.bukkeclass.domain.PageInfo;
import com.bukke.spring.bukkeclass.service.BukkeClassService;
import com.bukke.spring.bukkeclass.store.BukkeClassStore;
import com.bukke.spring.member.domain.MemberPageInfo;
import com.bukke.spring.review.domain.Review;
import com.bukke.spring.shop.controller.ShopPageInfo;

@Service
public class BukkeClassServiceImpl implements BukkeClassService {

	@Autowired
	private BukkeClassStore bStore;
	
	@Override
	public int getListCount() {
		return bStore.selectListCount();
	}
	
	@Override
	public int getClassFlowerListCount() {
		return bStore.selectFlowerListCount();
	}

	@Override
	public int getClassArtListCount() {
		return bStore.selectArtListCount();
	}

	@Override
	public int getBeautyListCount() {
		return bStore.selectBeautyListCount();
	}

	@Override
	public int getMusicListCount() {
		return bStore.selectMusicListCount();
	}

	@Override
	public int getPhotoListCount() {
		return bStore.selectPhotoListCount();
	}
	
	// 클래스 전체목록 조회 (관리자-클래스 관리 메뉴)
	@Override
	public ArrayList<BukkeClass> printAllBclass(PageInfo pi) {
		return bStore.selectAllListBclass(pi);
	}
	
	// 클래스 전체목록 조회 (관리자-클래스 관리 메뉴)
	@Override
	public ArrayList<BukkeClass> printAllBclass() {
		return bStore.selectAllListBclass();
	}
	
	@Override
	public ArrayList<BukkeClass> printFlowerBclass(PageInfo piFlower) {
		return bStore.selectFlowerBclass(piFlower);
	}

	@Override
	public ArrayList<BukkeClass> printArtBclass(PageInfo piArt) {
		return bStore.selectArtBclass(piArt);
	}

	@Override
	public ArrayList<BukkeClass> printBeautyBclass(PageInfo piBeauty) {
		return bStore.selectBeautyBclass(piBeauty);
	}

	@Override
	public ArrayList<BukkeClass> printMusicBclass(PageInfo piMusic) {
		return bStore.selectMusicBclass(piMusic);
	}

	@Override
	public ArrayList<BukkeClass> printPhotoBclass(PageInfo piPhoto) {
		return bStore.selectPhotoBclass(piPhoto);
	}

	// 클래스 상세정보
	@Override
	public BukkeClass printOneBclass(int classNo) {
		return bStore.selectOneBclass(classNo);
	}

	// 클래스 검색 (일반회원, 업체회원)
	@Override
	public ArrayList<BukkeClass> searchBclass(ClassSearch search) {
		return bStore.selectSearchListBclass(search);
	}

	// 클래스 등록 (업체회원-클래스 등록 메뉴)
	@Override
	public int registerBclass(BukkeClass bClass) {
		return bStore.insertBclass(bClass);
	}

	
	// 클래스 수정 (업체회원-클래스 수정 메뉴)
	@Override
	public int modifyBclass(BukkeClass bClass) {
		return bStore.updateBclass(bClass);
	}

	// 클래스 삭제 (업체회원-클래스 삭제 메뉴)
	@Override
	public int removeBclass(int classNo) {
		return bStore.deleteBclass(classNo);
	}

	// 클래스 TOP3 리스트 보여주기
	@Override
	public ArrayList<BukkeClass> printTopThreeBclass() {
		ArrayList<BukkeClass> bList = bStore.selectTopThreeListBclass();
		return bList;
	}

	// 예약목록에 클래스명 출력
	@Override
	public ArrayList<BukkeClass> printReservation() {
		return (ArrayList)bStore.selectReservation();
	}

	@Override
	public ArrayList<BukkeClass> printGiftBclass(BukkeClass bClass) {
		// TODO Auto-generated method stub
		return bStore.selectGiftListBclass(bClass);
	}

	@Override
	public int getListCountbyId(String memberId) {
		// TODO Auto-generated method stub
		return bStore.selectListCountbyId(memberId);
	}

	@Override
	public ArrayList<BukkeClass> printAllbClassById(MemberPageInfo classPi, String memberId) {
		// TODO Auto-generated method stub
		return bStore.selectAllListBclassbyId(classPi,memberId);
	}

	@Override
	public int getclassListMyId(String memberId) {
		// TODO Auto-generated method stub
		return bStore.selectListcountbyMyId(memberId);
	}

	@Override
	public ArrayList<BukkeClass> printMyclassById(MemberPageInfo classPi, String memberId) {
		// TODO Auto-generated method stub
		return bStore.selectAllListBclassbyMyId(classPi,memberId);
	}

	@Override
	public int getListCountShopId(String shopId) {
		// TODO Auto-generated method stub
		return bStore.selectCountShop(shopId);
	}

	@Override
	public ArrayList<BukkeClass> printAllbClassByShop(ShopPageInfo shopPi, String shopId) {
		// TODO Auto-generated method stub
		return bStore.selectAllListBclassbyMyShop(shopPi,shopId );
	}

	// 클래스 최근 글 상위2개 목록
	@Override
	public ArrayList<BukkeClass> printHomeTWoClassListDesc() {
		ArrayList<BukkeClass> twoClaList = bStore.selectHomeTWoClassListDesc();
		return twoClaList;
	}

	



}
