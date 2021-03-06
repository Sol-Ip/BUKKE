package com.bukke.spring.review.domain;

import java.sql.Date;

public class Review {
	private int reviewNo; // 후기번호
	private String memberId; // 회원아이디
	private String reviewTitle; // 후기글 제목
	private String reviewContents; // 후기글 내용
	private Date reviewDate; // 리뷰작성일
	private String reviewStatus; // 리뷰(삭제)여부
	private String rOriginalFilename; // 기존파일이름
	private String rRenameFilename; // 변경파일이름
	private int classNo; //클래스번호
	private int activityNo;//액티비티번호
	private int reviewLikeCnt;//좋아요갯수
	
	
	
	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", memberId=" + memberId + ", reviewTitle=" + reviewTitle
				+ ", reviewContents=" + reviewContents + ", reviewDate=" + reviewDate + ", reviewStatus=" + reviewStatus
				+ ", rOriginalFilename=" + rOriginalFilename + ", rRenameFilename=" + rRenameFilename + ", classNo="
				+ classNo + ", activityNo=" + activityNo + ", reviewLikeCnt=" + reviewLikeCnt + "]";
	}
	public int getReviewLikeCnt() {
		return reviewLikeCnt;
	}
	public void setReviewLikeCont(int reviewLikeCnt) {
		this.reviewLikeCnt = reviewLikeCnt;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public String getrOriginalFilename() {
		return rOriginalFilename;
	}
	public void setrOriginalFilename(String rOriginalFilename) {
		this.rOriginalFilename = rOriginalFilename;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	public int getClassNo() {
		return classNo;
	}
	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}
	public int getActivityNo() {
		return activityNo;
	}
	public void setActivityNo(int activityNo) {
		this.activityNo = activityNo;
	}
	public String getReviewTitle() {
		return reviewTitle;
	}
	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}
	public String getReviewContents() {
		return reviewContents;
	}
	public void setReviewContents(String reviewContents) {
		this.reviewContents = reviewContents;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}

	
	

	

	public String getrRenameFilename() {
		return rRenameFilename;
	}

	public void setrRenameFilename(String rRenameFilename) {
		this.rRenameFilename = rRenameFilename;
	}

	
	public String getReviewStatus() {
		return reviewStatus;
	}

	public void setReviewStatus(String reviewStatus) {
		this.reviewStatus = reviewStatus;
	}
	
	

}
