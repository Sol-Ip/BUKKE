package com.bukke.spring.shop.service.logic;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.spring.member.domain.Member;
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

	// 업체 회원가입
	@Override
	public int registerShop(Shop shop) {
		int result = sStore.insertShop(shop);
		return result;
	}
	
	// 업체회원 로그인
	@Override
	public Shop loginShop(Shop shop) {
		Shop loginShopper = sStore.loginShop(shop);
		return loginShopper;
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

	@Override
	public ArrayList<Shop> printAllShop() {
		// TODO Auto-generated method stub
		return sStore.selectShopList();
	}

	@Override
	public int confirmRegister(String shopId) {
		// TODO Auto-generated method stub
		return sStore.confirmRegister(shopId);
	}

	@Override
	public int cancelRegister(String shopId) {
		// TODO Auto-generated method stub
		return sStore.cancelRegister(shopId);
	}

	@Override
	public int getListCount() {
		// TODO Auto-generated method stub
		return sStore.selectMemberListCount();
	}

	@Override
	public int getCommentListCountByShop(String shopId) {
		// TODO Auto-generated method stub
		return sStore.selectMemberListCountMyShop(shopId);
	}
}
