package com.bukke.review.service;

import java.util.ArrayList;

import com.bukke.review.domain.Review;
import com.bukke.review.domain.ReviewComment;

public interface ReviewService {
	// 후기 전체 조회
	public ArrayList<Review> printAllReview();
	// 후기 상세 조회
	public Review printOneReview(int nId);
	// 후기 검색
	public ArrayList<Review> searchReview(String searchValue);
	// 후기 등록
	public int registerReview(Review review);
	// 후기 수정
	public int modifyReview(Review review);
	// 후기 삭제
	public int removeReview(int nId);
	// 댓글 조회
	public ArrayList<ReviewComment> printCommentAll();
	// 댓글 등록
	public int registerComment(ReviewComment rComment);
	// 댓글 수정
	public int modifyComment(ReviewComment rComment);
	// 댓글 삭제
	public int removeComment(int rId);
}
