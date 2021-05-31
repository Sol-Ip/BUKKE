package com.bukke.spring.review.service.logic;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.spring.review.domain.Review;
import com.bukke.spring.review.domain.ReviewComment;
import com.bukke.spring.review.domain.ReviewLikes;
import com.bukke.spring.review.domain.ReviewPageInfo;
import com.bukke.spring.review.domain.ReviewSearch;
import com.bukke.spring.review.service.ReviewService;
import com.bukke.spring.review.store.ReviewStore;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewStore rStore;

	// 후기 전체 조회
	@Override
	public ArrayList<Review> printAllReview(ReviewPageInfo pi) {
		// TODO Auto-generated method stub
		ArrayList<Review> rList = rStore.selectReviewList(pi);
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
	public ArrayList<Review> searchReview(ReviewSearch search) {
		// TODO Auto-generated method stub
		ArrayList<Review> searchList = rStore.selectSearchList(search);
		return searchList;
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
	public int removeReview(int reviewNo) {
		// TODO Auto-generated method stub
		return rStore.deleteReview(reviewNo);
	}
	// 댓글 조회
	@Override
	public ArrayList<ReviewComment> printCommentAll(int reviewNo) {
		// TODO Auto-generated method stub
		return rStore.selectCommentList(reviewNo);
	}
	// 댓글 등록
	@Override
	public int registerComment(ReviewComment rComment) {
		// TODO Auto-generated method stub
		return rStore.insertComment(rComment);
	}
	// 댓글 수정
	@Override
	public int modifyComment(ReviewComment rComment) {
		// TODO Auto-generated method stub
		return 0;
	}
	// 댓글 삭제
	@Override
	public int removeComment(ReviewComment rComment) {
		// TODO Auto-generated method stub
		return rStore.deleteComment(rComment);
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
	@Override
	public int getListCount() {
		// TODO Auto-generated method stub
		return rStore.selectListCount();
	}
	
	// 클래스에서 후기 보여주기
	@Override
	public ArrayList<Review> printReviewToBclass() {
		return rStore.selectReviewToBclass();
	}
	@Override
	public void insertReviewLike(ReviewLikes reviewLikes) {
		// TODO Auto-generated method stub
		rStore.insertReviewLike(reviewLikes);
		rStore.updateReviewLike(reviewLikes.getReviewNo());
		
	}
	@Override
	public void deleteReviewLike(ReviewLikes reviewLikes) {
		// TODO Auto-generated method stub
		rStore.deleteReviewLike(reviewLikes);
		rStore.updateReviewLike(reviewLikes.getReviewNo());
	}
	@Override
	public int getReviewLike(int reviewNo) {
		// TODO Auto-generated method stub
		return rStore.getReviewLike(reviewNo);
	}
	@Override
	public ReviewLikes printReviewLikes(ReviewLikes reviewLikes) {
		// TODO Auto-generated method stub
		return rStore.selectOneReviewLikes(reviewLikes);
	}

}
