package com.bukke.gift.store;

import java.util.ArrayList;

import com.bukke.gift.domain.Gift;

public interface GiftStore {
	
	// 선물 전체 보기
	public ArrayList<Gift> selectAllListGift(Gift gift);
	
	// 선물 상세 보기
	public Gift selectOneGift(int giftNo);
	
	// 선물하기(선물 등록)
	public int insertGift(Gift gift);
	
	// 선물 삭제하기
	public int deleteGift(Gift gift);

}
