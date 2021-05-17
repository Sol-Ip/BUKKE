package com.bukke.review.store;

import java.util.ArrayList;

import com.bukke.review.domain.Review;

public interface ReviewStore {
	public ArrayList<Review> selectList();
	public Review selectOne(int nId);
	public int insertReview(Review review);
	public int updateReview(Review review);
	public int deleteReview(int nId);
}
