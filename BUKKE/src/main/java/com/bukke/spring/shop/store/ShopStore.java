package com.bukke.spring.shop.store;

import com.bukke.spring.shop.domain.Shop;

public interface ShopStore {

	/**
	 * 업체정보 가져오기
	 */
	public Shop selectOneShop(Shop shop);
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
	public int insertShop(Shop shop);
	/**
	 * 업체 회원가입 승인(관리자)
	 */
	public int shopRegisterConfirm(String shopId);
	/**
	 * 업체 정보수정
	 */
	public int updateShop(Shop shop);
	/**
	 * 업체 회원탈퇴
	 */
	public int deleteShop(String shopId);

}
