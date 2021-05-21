package com.bukke.spring.review.domain;

import java.sql.Date;

public class ReviewComment {

	private int commentNo; // 댓글번호
	private String memberId; // 회원아이디
	private int reviewNo; // 후기번호
	private String commentContents; // 댓글내용
	private Date commentDate; // 댓글작성일
	private String commentStatus; // 댓글(삭제)여부
	
	public ReviewComment() {}

	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
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
	public String getCommentContents() {
		return commentContents;
	}
	public void setCommentContents(String commentContents) {
		this.commentContents = commentContents;
	}
	public Date getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}
	public String getCommentStatus() {
		return commentStatus;
	}
	public void setCommentStatus(String commentStatus) {
		this.commentStatus = commentStatus;
	}

	@Override
	public String toString() {
		return "ReviewComment [commentNo=" + commentNo + ", memberId=" + memberId + ", reviewNo=" + reviewNo
				+ ", commentContents=" + commentContents + ", commentDate=" + commentDate + ", commentStatus="
				+ commentStatus + "]";
	}
	
}
