package com.bukke.spring.review.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.bukke.spring.review.domain.Review;
import com.bukke.spring.review.domain.ReviewComment;
import com.bukke.spring.review.domain.ReviewLikes;
import com.bukke.spring.review.domain.ReviewPageInfo;
import com.bukke.spring.review.domain.ReviewSearch;

public interface ReviewService {
	// �ı� ��ü ��ȸ
	public ArrayList<Review> printAllReview(ReviewPageInfo pi);
	// �ı� �� ��ȸ
	public Review printOneReview(int rId);
	// �ı� �˻�
	public ArrayList<Review> searchReview(ReviewSearch search);
	// �ı� ���
	public int registerReview(Review review);
	// �ı� ����
	public int modifyReview(Review review);
	// �ı� ����
	public int removeReview(int rId);
	// ��� ��ȸ
	public ArrayList<ReviewComment> printCommentAll(int reviewNo);
	// ��� ���
	public int registerComment(ReviewComment rComment);
	// ��� ����
	public int modifyComment(ReviewComment rComment);
	// ��� ����
	public int removeComment(ReviewComment rComment);
	//���ƿ� �ø�
	public int addLikes(Review review);
	//���ƿ� ����
	public int removeLikes(Review review);
	public int getListCount();
	// Ŭ�������� �ı� �����ֱ�
	public ArrayList<Review> printReviewToBclass(int classNo);
	
	//���ƿ��߰�
	public void insertReviewLike(ReviewLikes reviewLikes);
	
	//���ƿ����
	public void deleteReviewLike(ReviewLikes reviewLikes);
	
	//���ƿ���ȸ
	public int getReviewLike(int reviewNo);
	public ReviewLikes printReviewLikes(ReviewLikes reviewLikes);
	public int getListCountById(String memberId);
	public ArrayList<Review> printLikeReview(ReviewPageInfo pi, String memberId);
	public int getReviewListCountById(String memberId);
	public ArrayList<Review> printAllReviewbyId(ReviewPageInfo pi, String memberId);
	public int getCommentListCountById(String memberId);
	public ArrayList<ReviewComment> printAllCommentbyId(ReviewPageInfo pi, String memberId);
	public int printcommnetCount(String memberId); //댓글 카운트
	public int printReviewCount(String memberId); //리뷰 카운트
	public ArrayList<Review> printReviewToActivity(int activityNo);//클래스 상세페이지 아래 후기
	public ArrayList<Review> printTopLikesReview();//후기 좋아요 탑3개 리스트
	public ArrayList<Review> printAllManageReview(); //전체 리뷰 카운트 (페이징x)
	public ArrayList<ReviewComment> printAllManageComment();//전체 댓글 카운트 (페이징x)
	public int removeAdminComment(HashMap<String,Integer> cMap); //관리자 댓글 삭제
	
}
