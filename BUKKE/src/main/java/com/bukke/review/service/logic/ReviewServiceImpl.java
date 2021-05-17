package com.bukke.review.service.logic;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.bukke.review.domain.Review;
import com.bukke.review.domain.ReviewComment;
import com.bukke.review.service.ReviewService;
import com.bukke.review.store.ReviewStore;

public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewStore bStore;

	// 후기 전체 조회
	@Override
	public ArrayList<Review> printAll() {
		// TODO Auto-generated method stub
		return null;
	}
	// 후기 상세 조회
	@Override
	public Review printOne(int nId) {
		// TODO Auto-generated method stub
		return null;
	}
	// 후기 검색
	@Override
	public ArrayList<Review> searchReview(String searchValue) {
		// TODO Auto-generated method stub
		return null;
	}
	
	// 후기 등록
	@Override
	public int registerReview(Review review) {
		// TODO Auto-generated method stub
		return 0;
	}
	// 후기 수정
	@Override
	public int modifyReview(Review review) {
		// TODO Auto-generated method stub
		return 0;
	} 
	// 후기 삭제
	@Override
	public int removeReview(int nId) {
		// TODO Auto-generated method stub
		return 0;
	}
	// 댓글 조회
	@Override
	public ArrayList<ReviewComment> printCommentAll() {
		// TODO Auto-generated method stub
		return null;
	}
	// 댓글 등록
	@Override
	public int registerComment(ReviewComment rComment) {
		// TODO Auto-generated method stub
		return 0;
	}
	// 댓글 수정
	@Override
	public int modifyComment(ReviewComment rComment) {
		// TODO Auto-generated method stub
		return 0;
	}
	// 댓글 삭제
	@Override
	public int removeComment(int rId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
