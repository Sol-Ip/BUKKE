package com.bukke.spring.shop.service.logic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.spring.shop.domain.Shop;
import com.bukke.spring.shop.service.ShopService;
import com.bukke.spring.shop.store.ShopStore;

@Service
public class ShopServiceImpl implements ShopService {
	
	@Autowired
	private ShopStore sStore;

	@Override
	public Shop selectShop(Shop shop) {
		// 업체정보 가져오기
		return null;
	}

	@Override
	public int checkIdDup(String shopId) {
		// 업체 아이디 중복확인
		return 0;
	}

	@Override
	public int registerShop(Shop shop) {
		// 업체 회원가입
		return 0;
	}

	@Override
	public int shopRegisterConfirm(String shopId) {
		// 업체 회원가입 승인(관리자)
		return 0;
	}

	@Override
	public int modifyShop(Shop shop) {
		// 업체 정보수정
		return 0;
	}

	@Override
	public int deleteShop(String shopId) {
		// 업체 회원탈퇴
		return 0;
	}
}
