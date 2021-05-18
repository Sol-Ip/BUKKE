package com.bukke.spring.review.domain;

import java.sql.Date;

public class Review {
	private int reviewNo; // 후기번호
	private String memberId; // 회원아이디
	private String reviewTitle; // 후기글 제목
	private String reviewContents; // 후기글 내용
	private Date reviewDate; // 리뷰작성일
	private String reviewStatus; // 리뷰(삭제)여부
	private int rFileNo; // 사진번호
	private String rFileName; // 사진이름
	private int rFileSize; // 사진크기
	private String rFileType; // 사진파일형식
	private Date rFileDate; //업로드날짜
	private String rFilePath; // 사진경로
	private String rOrifinalFilename; // 기존파일이름
	private String rRenameFilename; // 변경파일이름
	private String likeCheck; // 좋아요체크
	
	public int getReviewNo() {
		return reviewNo;
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
	public int getrFileNo() {
		return rFileNo;
	}
	public void setrFileNo(int rFileNo) {
		this.rFileNo = rFileNo;
	}
	public String getrFileName() {
		return rFileName;
	}
	public void setrFileName(String rFileName) {
		this.rFileName = rFileName;
	}
	public int getrFileSize() {
		return rFileSize;
	}
	public void setrFileSize(int rFileSize) {
		this.rFileSize = rFileSize;
	}
	public String getrFileType() {
		return rFileType;
	}
	public void setrFileType(String rFileType) {
		this.rFileType = rFileType;
	}
	public Date getrFileDate() {
		return rFileDate;
	}
	public void setrFileDate(Date rFileDate) {
		this.rFileDate = rFileDate;
	}
	public String getrFilePath() {
		return rFilePath;
	}
	public void setrFilePath(String rFilePath) {
		this.rFilePath = rFilePath;
	}
	public String getrOrifinalFilename() {
		return rOrifinalFilename;
	}
	public void setrOrifinalFilename(String rOrifinalFilename) {
		this.rOrifinalFilename = rOrifinalFilename;
	}
	public String getrRenameFilename() {
		return rRenameFilename;
	}
	public void setrRenameFilename(String rRenameFilename) {
		this.rRenameFilename = rRenameFilename;
	}
	public String getLikeCheck() {
		return likeCheck;
	}
	public void setLikeCheck(String likeCheck) {
		this.likeCheck = likeCheck;
	}
	public String getReviewStatus() {
		return reviewStatus;
	}
	public void setReviewStatus(String reviewStatus) {
		this.reviewStatus = reviewStatus;
	}
	
	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", memberId=" + memberId + ", reviewTitle=" + reviewTitle
				+ ", reviewContents=" + reviewContents + ", reviewDate=" + reviewDate + ", reviewStatus=" + reviewStatus
				+ ", rFileNo=" + rFileNo + ", rFileName=" + rFileName + ", rFileSize=" + rFileSize + ", rFileType="
				+ rFileType + ", rFileDate=" + rFileDate + ", rFilePath=" + rFilePath + ", rOrifinalFilename="
				+ rOrifinalFilename + ", rRenameFilename=" + rRenameFilename + ", likeCheck=" + likeCheck + "]";
	}

}
