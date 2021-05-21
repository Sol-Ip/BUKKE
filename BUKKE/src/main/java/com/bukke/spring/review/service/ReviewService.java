package com.bukke.spring.review.service;

import java.util.ArrayList;

import com.bukke.spring.review.domain.Review;
import com.bukke.spring.review.domain.ReviewComment;

public interface ReviewService {
	// 후기 전체 조회
	public ArrayList<Review> printAllReview();
	// 후기 상세 조회
	public Review printOneReview(int rId);
	// 후기 검색
	public ArrayList<Review> searchReview(String searchValue);
	// 후기 등록
	public int registerReview(Review review);
	// 후기 수정
	public int modifyReview(Review review);
	// 후기 삭제
	public int removeReview(int rId);
	// 댓글 조회
	public ArrayList<ReviewComment> printCommentAll();
	// 댓글 등록
	public int registerComment(ReviewComment rComment);
	// 댓글 수정
	public int modifyComment(ReviewComment rComment);
	// 댓글 삭제
	public int removeComment(int rId);
	//좋아요 올림
	public int addLikes(Review review);
	//좋아요 내림
	public int removeLikes(Review review);
}
