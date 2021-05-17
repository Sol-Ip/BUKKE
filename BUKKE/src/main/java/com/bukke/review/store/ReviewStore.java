package com.bukke.review.store;

import java.util.ArrayList;

import com.bukke.review.domain.Review;

public interface ReviewStore {
	// 후기 전체 조회
	public ArrayList<Review> selectList();
	
	// 후기 상세 조회
	public Review selectOne(int nId);
	
	// 후기 검색
	public ArrayList<Review> searchReviewList(String reviewValue);
	
	// 후기 등록
	public int insertReview(Review review);
	
	// 후기 수정
	public int updateReview(Review review);
	
	// 후기 삭제
	public int deleteReview(int nId);
}
