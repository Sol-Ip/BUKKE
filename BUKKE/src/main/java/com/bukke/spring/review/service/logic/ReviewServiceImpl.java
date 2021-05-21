package com.bukke.spring.review.service.logic;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.spring.review.domain.Review;
import com.bukke.spring.review.domain.ReviewComment;
import com.bukke.spring.review.service.ReviewService;
import com.bukke.spring.review.store.ReviewStore;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewStore rStore;

	// 후기 전체 조회
	@Override
	public ArrayList<Review> printAllReview() {
		// TODO Auto-generated method stub
		ArrayList<Review> rList = rStore.selectReviewList();
		return rList;
	}
	// 후기 상세 조회
	@Override
	public Review printOneReview(int rId) {
		// TODO Auto-generated method stub
		Review review = rStore.selectOneReview(rId);
		return review;
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
		return rStore.insertReview(review);
	}
	// 후기 수정
	@Override
	public int modifyReview(Review review) {
		// TODO Auto-generated method stub
		return rStore.updateReview(review);
	} 
	// 후기 삭제
	@Override
	public int removeReview(int rId) {
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
	@Override
	public int addLikes(Review review) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int removeLikes(Review review) {
		// TODO Auto-generated method stub
		return 0;
	}

}
