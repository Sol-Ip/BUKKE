package com.bukke.review.service;

import java.util.ArrayList;

import com.bukke.bukkeclass.domain.BukkeClass;
import com.bukke.review.domain.Review;

public interface ReviewService {
	// 후기 전체 조회
	public ArrayList<Review> printAll();
	// 후기 상세 조회
	public Review printOne(int nId);
	// 후기 검색
	public ArrayList<Review> searchReview(String searchValue);
	// 후기 등록
	public int registerReview(Review review);
	// 후기 수정
	public int modifyReview(Review review);
	// 후기 삭제
	public int removeReview(int nId);
}
