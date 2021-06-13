package com.bukke.spring.shop.service;

import java.util.ArrayList;

import com.bukke.spring.shop.domain.Shop;

public interface ShopService {

	/**
	 * 업체정보 가져오기
	 */
	public Shop selectShop(Shop shop);
	/**
	 * 업체 아이디 중복확인
	 */
	public int checkIdDup(String shopId);
	/**
	 * 업체회원 로그인
	 */
	public Shop loginShop(Shop shop);
	/**
	 * 업체 회원가입
	 */
	public int registerShop(Shop shop);
	/**
	 * 업체 회원가입 승인(관리자)
	 */
	public int shopRegisterConfirm(String shopId);
	/**
	 * 업체 정보수정
	 */
	public int modifyShop(Shop shop);
	/**
	 * 업체 회원탈퇴
	 */
	public int deleteShop(String shopId);
	public ArrayList<Shop> printAllShop();
	public int confirmRegister(String shopId);
	public int cancelRegister(String shopId);
	public int getListCount();// 전체 업체회원 수
	public int getCommentListCountByShop(String shopId); //업체 댓글 카운트
}
