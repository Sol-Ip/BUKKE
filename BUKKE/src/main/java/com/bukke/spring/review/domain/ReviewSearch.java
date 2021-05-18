package com.bukke.review.domain;

public class ReviewSearch {
	
	private String reviewCategory; // 후기 검색 카테고리
	private String reviewKeyword; // 후기 검색 키워드
	public String getReviewCategory() {
		return reviewCategory;
	}
	public void setReviewCategory(String reviewCategory) {
		this.reviewCategory = reviewCategory;
	}
	public String getReviewKeyword() {
		return reviewKeyword;
	}
	public void setReviewKeyword(String reviewKeyword) {
		this.reviewKeyword = reviewKeyword;
	}
	@Override
	public String toString() {
		return "ReviewSearch [reviewCategory=" + reviewCategory + ", reviewKeyword=" + reviewKeyword + "]";
	}

}
