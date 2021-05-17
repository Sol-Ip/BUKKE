package com.bukke.review.store.logic;

import java.util.ArrayList;

import com.bukke.review.domain.Review;
import com.bukke.review.store.ReviewStore;

public class ReviewStoreImpl implements ReviewStore {
	
	//후기전체조회(리스트)
	@Override
	public ArrayList<Review> selectList() {
		// TODO Auto-generated method stub
		return null;
	}
	//후기하나 디테일즈 조회
	@Override
	public Review selectOne(int nId) {
		// TODO Auto-generated method stub
		return null;
	}
	//후기등록
	@Override
	public int insertReview(Review review) {
		// TODO Auto-generated method stub
		return 0;
	}
	//후기수정
	@Override
	public int updateReview(Review review) {
		// TODO Auto-generated method stub
		return 0;
	}
	//후기삭제
	@Override
	public int deleteReview(int nId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
