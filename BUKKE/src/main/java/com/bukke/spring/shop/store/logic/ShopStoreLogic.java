package com.bukke.spring.shop.store.logic;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.spring.shop.domain.Shop;
import com.bukke.spring.shop.store.ShopStore;

@Repository
public class ShopStoreLogic implements ShopStore {

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public Shop selectOneShop(Shop shop) {
		// 업체 상세정보
		return null;
	}

	@Override
	public int checkIdDup(String shopId) {
		// 업체 아이디 중복확인
		return 0;
	}

	@Override
	public int insertShop(Shop shop) {
		// 업체 회원가입
		return 0;
	}

	@Override
	public int shopRegisterConfirm(String shopId) {
		// 업체 회원가입 승인(관리자)
		return 0;
	}

	@Override
	public int updateShop(Shop shop) {
		// 업체 정보수정
		return 0;
	}

	@Override
	public int deleteShop(String shopId) {
		// 업체 회원탈퇴
		return 0;
	}

}