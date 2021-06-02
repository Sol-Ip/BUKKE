package com.bukke.spring.review.store;

import java.util.ArrayList;

import com.bukke.spring.review.domain.Review;
import com.bukke.spring.review.domain.ReviewComment;
import com.bukke.spring.review.domain.ReviewLikes;
import com.bukke.spring.review.domain.ReviewPageInfo;
import com.bukke.spring.review.domain.ReviewSearch;

public interface ReviewStore {
	// �ı� ��ü ��ȸ
	public ArrayList<Review> selectReviewList(ReviewPageInfo pi);
	
	// �ı� �� ��ȸ
	public Review selectOneReview(int rId);
	
	// �ı� �˻�
	public ArrayList<Review> selectSearchList(ReviewSearch search);
	
	// �ı� ���
	public int insertReview(Review review);
	
	// �ı� ����
	public int updateReview(Review review);
	
	// �ı� ����
	public int deleteReview(int rId);
	
	// ��� ��ȸ
	public ArrayList<ReviewComment> selectCommentList(int nId);
	
	// ��� ���
	public int insertComment(ReviewComment rComment);
	
	// ��� ����
	public int updateComment(ReviewComment rComment);
	
	// ��� ����
	public int deleteComment(ReviewComment rComment);
	
	//���ƿ� �ø�
	public int insertLikes(Review review);
	
	//���ƿ� ����
	public int deleteLikes(Review review);

	public int selectListCount();

	// Ŭ�������� ���� �����ֱ�
	public ArrayList<Review> selectReviewToBclass();
	
	//���ƿ䰹�� ǥ��
	public int getReviewLike(int reviewNo);
	
	//���ƿ��߰�
	public void insertReviewLike(ReviewLikes reviewLikes);
	
	//���ƿ����
	public void deleteReviewLike(ReviewLikes reviewLikes);
	
	//���ƿ������Ʈ
	public void updateReviewLike(int reviewNo);

	public ReviewLikes selectOneReviewLikes(ReviewLikes reviewLikes);

	public int selectLikeListCount(String memberId);

	public ArrayList<Review> selectLikeReviewList(ReviewPageInfo pi, String memberId);

	public int selectReviewListCount(String memberId);

	public ArrayList<Review> selectReviewListbyId(ReviewPageInfo pi, String memberId);

	public int selectCommentListCountbyId(String memberId);

	public ArrayList<Review> selectCommentListbyId(ReviewPageInfo pi, String memberId);
	
	
}
