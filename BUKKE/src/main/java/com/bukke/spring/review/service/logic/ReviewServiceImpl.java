package com.bukke.spring.review.service.logic;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.spring.review.domain.Review;
import com.bukke.spring.review.domain.ReviewComment;
import com.bukke.spring.review.domain.ReviewLikes;
import com.bukke.spring.review.domain.ReviewPageInfo;
import com.bukke.spring.review.domain.ReviewSearch;
import com.bukke.spring.review.service.ReviewService;
import com.bukke.spring.review.store.ReviewStore;
import com.bukke.spring.shop.controller.ShopPageInfo;

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
	public ArrayList<Review> printReviewToBclass(int classNo) {
		return rStore.selectReviewToBclass(classNo);
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
	@Override
	public int getListCountById(String memberId) {
		// TODO Auto-generated method stub
		return rStore.selectLikeListCount(memberId);
	}
	@Override
	public ArrayList<Review> printLikeReview(ReviewPageInfo pi, String memberId) {
		// TODO Auto-generated method stub
		return rStore.selectLikeReviewList(pi, memberId);
	}
	@Override
	public int getReviewListCountById(String memberId) {
		// TODO Auto-generated method stub
		return rStore.selectReviewListCount(memberId);
	}
	@Override
	public ArrayList<Review> printAllReviewbyId(ReviewPageInfo pi, String memberId) {
		// TODO Auto-generated method stub
		return rStore.selectReviewListbyId(pi, memberId);
	}
	@Override
	public int getCommentListCountById(String memberId) {
		// TODO Auto-generated method stub
		return rStore.selectCommentListCountbyId(memberId);
	}
	@Override
	public ArrayList<ReviewComment> printAllCommentbyId(ReviewPageInfo pi, String memberId) {
		// TODO Auto-generated method stub
		return rStore.selectCommentListbyId(pi,memberId);
	}
	@Override
	public int printcommnetCount(String reservationId) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int printReviewCount(String reservationId) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public ArrayList<Review> printReviewToActivity(int activityNo) {
		// TODO Auto-generated method stub
		return rStore.selectReviewToActivity(activityNo);
	}
	//후기 리스트 좋아요 많은거순 3개 리스트
	@Override
	public ArrayList<Review> printTopLikesReview() {
		// TODO Auto-generated method stub
		ArrayList<Review> rListTopLikes = rStore.selectTopLikesReviewList();
		return rListTopLikes;
	}
	
	@Override
	public ArrayList<Review> printAllManageReview() {
		// TODO Auto-generated method stub
		return rStore.selectAlladminList();
	}

	@Override
	public ArrayList<ReviewComment> printAllManageComment() {
		// TODO Auto-generated method stub
		return rStore.selectAlladminCommentList();
	}

	@Override
	public int removeAdminComment(HashMap<String, Integer> cMap) {
		// TODO Auto-generated method stub
		return rStore.deleteAdminComment(cMap);
	}
}
