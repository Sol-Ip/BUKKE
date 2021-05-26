package com.bukke.spring.review.store;

import java.util.ArrayList;

import com.bukke.spring.review.domain.Review;
import com.bukke.spring.review.domain.ReviewComment;
import com.bukke.spring.review.domain.ReviewPageInfo;
import com.bukke.spring.review.domain.ReviewSearch;

public interface ReviewStore {
	// 후기 전체 조회
	public ArrayList<Review> selectReviewList(ReviewPageInfo pi);
	
	// 후기 상세 조회
	public Review selectOneReview(int rId);
	
	// 후기 검색
	public ArrayList<Review> selectSearchList(ReviewSearch search);
	
	// 후기 등록
	public int insertReview(Review review);
	
	// 후기 수정
	public int updateReview(Review review);
	
	// 후기 삭제
	public int deleteReview(int rId);
	
	// 댓글 조회
	public ArrayList<ReviewComment> selectCommentList(int nId);
	
	// 댓글 등록
	public int insertComment(ReviewComment rComment);
	
	// 댓글 수정
	public int updateComment(ReviewComment rComment);
	
	// 댓글 삭제
	public int deleteComment(ReviewComment rComment);
	
	//좋아요 올림
	public int insertLikes(Review review);
	
	//좋아요 내림
	public int deleteLikes(Review review);

	public int selectListCount();

	
}
