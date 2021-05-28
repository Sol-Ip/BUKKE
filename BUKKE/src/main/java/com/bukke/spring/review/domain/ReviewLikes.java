package com.bukke.spring.review.domain;

public class ReviewLikes {
	private int likesNo;
	private String memberId;
	private int reviewNo;
	private String likeCheck;
	public int getLikesNo() {
		return likesNo;
	}
	public void setLikesNo(int likesNo) {
		this.likesNo = likesNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getLikeCheck() {
		return likeCheck;
	}
	public void setLikeCheck(String likeCheck) {
		this.likeCheck = likeCheck;
	}
	@Override
	public String toString() {
		return "ReviewLikes [likesNo=" + likesNo + ", memberId=" + memberId + ", reviewNo=" + reviewNo + ", likeCheck="
				+ likeCheck + "]";
	}
	
	
}
