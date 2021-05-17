package com.bukke.review.service;

import java.util.ArrayList;

import com.bukke.review.domain.Review;

public interface ReviewService {
	public ArrayList<Review> printAll();
	public Review printOne(int nId);
	public int registerReview(Review review);
	public int modifyReview(Review review);
	public int removeReview(int nId);
}
