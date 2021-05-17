package com.bukke.gift.service;

import java.util.ArrayList;

import com.bukke.gift.domain.Gift;

public interface GiftService {
	
	// 선물 보내기 (선물 등록?)
	public int sendGift(Gift gift);
	
	// 선물 전체 보기
	 public ArrayList<Gift> printAll(Gift gift);
	 
	 // 선물 상세 보기
	 public Gift printOne(int giftNo);
	 
	 // 선물 삭제
	 public int removeGift(int giftNo);
}
