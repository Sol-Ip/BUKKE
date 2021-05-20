package com.bukke.spring.review.store.logic;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.spring.review.domain.Review;
import com.bukke.spring.review.domain.ReviewComment;
import com.bukke.spring.review.store.ReviewStore;

@Repository
public class ReviewStoreLogic implements ReviewStore {
	
	@Autowired
	private SqlSessionTemplate session;
	
	// 후기 전체 조회(리스트)
	@Override
	public ArrayList<Review> selectReviewList() {
		// TODO Auto-generated method stub
		return (ArrayList)session.selectList("reviewMapper.selectReviewList");
		
	}
	// 후기 상세 조회
	@Override
	public Review selectOneReview(int rId) {
		// TODO Auto-generated method stub
		Review review = session.selectOne("reviewMapper.selectOne", rId);
		return review;
	}
	
	// 후기 검색
	@Override
	public ArrayList<Review> searchReviewList(String reviewValue) {
		// TODO Auto-generated method stub
		return null;
	}
	
	//후기 등록
	@Override
	public int insertReview(Review review) {
		// TODO Auto-generated method stub
		return 0;
	}
	//후기 수정
	@Override
	public int updateReview(Review review) {
		// TODO Auto-generated method stub
		return 0;
	}
	//후기 삭제
	@Override
	public int deleteReview(int rId) {
		// TODO Auto-generated method stub
		return 0;
	}
	// 댓글 조회
	@Override
	public ArrayList<ReviewComment> selectCommentList(int nId) {
		// TODO Auto-generated method stub
		return null;
	}
	// 댓글 등록
	@Override
	public int insertComment(ReviewComment rComment) {
		// TODO Auto-generated method stub
		return 0;
	}
	// 댓글 수정
	@Override
	public int updateComment(ReviewComment rComment) {
		// TODO Auto-generated method stub
		return 0;
	}
	// 댓글 삭제
	@Override
	public int deleteComment(int rId) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int insertLikes(Review review) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int deleteLikes(Review review) {
		// TODO Auto-generated method stub
		return 0;
	}
}