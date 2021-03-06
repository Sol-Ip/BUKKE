package com.bukke.spring.shop.store.logic;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.spring.member.domain.Member;
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

	// 업체 회원가입
	@Override
	public int insertShop(Shop shop) {
		int result = session.insert("shopMapper.insertShop",shop);
		return result;
	}

	// 업체회원 로그인
	@Override
	public Shop loginShop(Shop shop) {
		Shop loginShopper = session.selectOne("shopMapper.selectOneShop",shop);
		return loginShopper;
	}
	
	@Override
	public int shopRegisterConfirm(String shopId) {
		// 업체 회원가입 승인(관리자)
		return 0;
	}

	@Override
	public int updateShop(Shop shop) {
		int result = session.insert("shopMapper.updateShop",shop);
		return result;
	}

	@Override
	public int deleteShop(String shopId) {
		int result = session.insert("shopMapper.deleteShop",shopId);
		return result;
	}

	@Override
	public ArrayList<Shop> selectShopList() {
		// TODO Auto-generated method stub
		return (ArrayList)session.selectList("shopMapper.selectShopList");
	}

	@Override
	public int confirmRegister(String shopId) {
		// TODO Auto-generated method stub
		return session.update("shopMapper.confirmRegister", shopId);
	}

	@Override
	public int cancelRegister(String shopId) {
		// TODO Auto-generated method stub
		return session.update("shopMapper.rejectRegister", shopId);
	}
	
	//전체 업체회원수 
	@Override
	public int selectMemberListCount() {
		// TODO Auto-generated method stub
		return session.selectOne("shopMapper.selectShopListCount");
	}

	@Override
	public int selectMemberListCountMyShop(String shopId) {
		// TODO Auto-generated method stub
		return session.selectOne("shopMapper.selectCountListByShop",shopId);
	}

}
