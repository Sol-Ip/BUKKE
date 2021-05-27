package com.bukke.spring.shop.service;

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
}
