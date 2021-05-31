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

	// �ı� ��ü ��ȸ
	@Override
	public ArrayList<Review> printAllReview(ReviewPageInfo pi) {
		// TODO Auto-generated method stub
		ArrayList<Review> rList = rStore.selectReviewList(pi);
		return rList;
	}
	// �ı� �� ��ȸ
	@Override
	public Review printOneReview(int rId) {
		// TODO Auto-generated method stub
		Review review = rStore.selectOneReview(rId);
		return review;
	}
	// �ı� �˻�
	@Override
	public ArrayList<Review> searchReview(ReviewSearch search) {
		// TODO Auto-generated method stub
		ArrayList<Review> searchList = rStore.selectSearchList(search);
		return searchList;
	}
	
	// �ı� ���
	@Override
	public int registerReview(Review review) {
		// TODO Auto-generated method stub
		return rStore.insertReview(review);
	}
	// �ı� ����
	@Override
	public int modifyReview(Review review) {
		// TODO Auto-generated method stub
		return rStore.updateReview(review);
	} 
	// �ı� ����
	@Override
	public int removeReview(int reviewNo) {
		// TODO Auto-generated method stub
		return rStore.deleteReview(reviewNo);
	}
	// ��� ��ȸ
	@Override
	public ArrayList<ReviewComment> printCommentAll(int reviewNo) {
		// TODO Auto-generated method stub
		return rStore.selectCommentList(reviewNo);
	}
	// ��� ���
	@Override
	public int registerComment(ReviewComment rComment) {
		// TODO Auto-generated method stub
		return rStore.insertComment(rComment);
	}
	// ��� ����
	@Override
	public int modifyComment(ReviewComment rComment) {
		// TODO Auto-generated method stub
		return 0;
	}
	// ��� ����
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
	
	// Ŭ�������� �ı� �����ֱ�
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
