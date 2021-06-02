package com.bukke.spring.review.store.logic;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.spring.review.domain.Review;
import com.bukke.spring.review.domain.ReviewComment;
import com.bukke.spring.review.domain.ReviewLikes;
import com.bukke.spring.review.domain.ReviewPageInfo;
import com.bukke.spring.review.domain.ReviewSearch;
import com.bukke.spring.review.store.ReviewStore;

@Repository
public class ReviewStoreLogic implements ReviewStore {
	
	@Autowired
	private SqlSessionTemplate session;
	
	// �ı� ��ü ��ȸ(����Ʈ)
	@Override
	public ArrayList<Review> selectReviewList(ReviewPageInfo pi) {
		// TODO Auto-generated method stub
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
	    RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)session.selectList("reviewMapper.selectReviewList",null,rowBounds);
		
	}
	// �ı� �� ��ȸ
	@Override
	public Review selectOneReview(int rId) {
		// TODO Auto-generated method stub
		Review review = session.selectOne("reviewMapper.selectOne", rId);
		return review;
	}
	
	// �ı� �˻�
	@Override
	public ArrayList<Review> selectSearchList(ReviewSearch search) {
		// TODO Auto-generated method stub
		return (ArrayList)session.selectList("reviewMapper.selectSearchList", search);
	}
	
	//�ı� ���
	@Override
	public int insertReview(Review review) {
		// TODO Auto-generated method stub
		return session.insert("reviewMapper.insertReview", review);
	}
	//�ı� ����
	@Override
	public int updateReview(Review review) {
		// TODO Auto-generated method stub
		return session.update("reviewMapper.updateReview", review);
	}
	//�ı� ����
	@Override
	public int deleteReview(int reviewNo) {
		// TODO Auto-generated method stub
		return session.update("reviewMapper.deleteReview", reviewNo);
	}
	// ��� ��ȸ
	@Override
	public ArrayList<ReviewComment> selectCommentList(int reviewNo) {
		// TODO Auto-generated method stub
		return (ArrayList)session.selectList("reviewMapper.selectCommentList", reviewNo);
	}
	// ��� ���
	@Override
	public int insertComment(ReviewComment rComment) {
		// TODO Auto-generated method stub
		return session.insert("reviewMapper.insertComment", rComment);
	}
	// ��� ����
	@Override
	public int updateComment(ReviewComment rComment) {
		// TODO Auto-generated method stub
		return 0;
	}
	// ��� ����
	@Override
	public int deleteComment(ReviewComment rComment) {
		// TODO Auto-generated method stub
		return session.delete("reviewMapper.deleteComment", rComment);
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
	@Override
	public int selectListCount() {
		return session.selectOne("reviewMapper.selectListCount");
	}
	
	// Ŭ�������� �ı� �����ֱ�
	@Override
	public ArrayList<Review> selectReviewToBclass() {
		return (ArrayList)session.selectList("reviewMapper.selectListToBclass");
	}
	@Override
	public int getReviewLike(int reviewNo) {
		// TODO Auto-generated method stub
		return session.selectOne("reviewMapper.getReviewLike", reviewNo);
	}
	@Override
	public void insertReviewLike(ReviewLikes reviewLikes) {
		// TODO Auto-generated method stub
		session.insert("reviewMapper.createReviewLike",reviewLikes);
		
	}
	@Override
	public void deleteReviewLike(ReviewLikes reviewLikes) {
		// TODO Auto-generated method stub
		session.delete("reviewMapper.deleteReviewLike",reviewLikes);
	}
	@Override
	public void updateReviewLike(int reviewNo) {
		// TODO Auto-generated method stub
		session.update("reviewMapper.updateReviewLike", reviewNo);
	}
	@Override
	public ReviewLikes selectOneReviewLikes(ReviewLikes reviewLikes) {
		// TODO Auto-generated method stub
		return session.selectOne("reviewMapper.seleceOneReviewLikes",reviewLikes);
	}
	@Override
	public int selectLikeListCount(String memberId) {
		// TODO Auto-generated method stub
		return session.selectOne("reviewMapper.selectLikeListCount", memberId);
	}
	@Override
	public ArrayList<Review> selectLikeReviewList(ReviewPageInfo pi, String memberId) {
		// TODO Auto-generated method stub
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
	    RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)session.selectList("reviewMapper.selectLikeList",memberId,rowBounds);
	}
	@Override
	public int selectReviewListCount(String memberId) {
		// TODO Auto-generated method stub
		return session.selectOne("reviewMapper.selectReviewListCountbyId", memberId);
	}
	@Override
	public ArrayList<Review> selectReviewListbyId(ReviewPageInfo pi, String memberId) {
		// TODO Auto-generated method stub
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
	    RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return  (ArrayList)session.selectList("reviewMapper.selectReviewListbyId",memberId,rowBounds);
	}
	@Override
	public int selectCommentListCountbyId(String memberId) {
		// TODO Auto-generated method stub
		return session.selectOne("reviewMapper.selectCommentListCountbyId",memberId);
	}
	@Override
	public ArrayList<Review> selectCommentListbyId(ReviewPageInfo pi, String memberId) {
		// TODO Auto-generated method stub
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
	    RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)session.selectList("reviewMapper.selectCommentListbyId",memberId,rowBounds);
	}
}
