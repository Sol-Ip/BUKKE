package com.bukke.review.domain;

import java.sql.Date;

public class Review {
	private int reviewNo;
	private String memberId;
	private String reviewTitle;
	private String reviewContents;
	private Date reviewDate;
	private int rFileNo;
	private String rFileName;
	private int rFileSize;
	private String rFileType;
	private Date rFileDate;
	private String rFilePath;
	private String rOrifinalFilename;
	private String rRenameFilename;
	private int reviewLikes;
	public int getReviewLikes() {
		return reviewLikes;
	}
	public void setReviewLikes(int reviewLikes) {
		this.reviewLikes = reviewLikes;
	}
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
	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", memberId=" + memberId + ", reviewTitle=" + reviewTitle
				+ ", reviewContents=" + reviewContents + ", reviewDate=" + reviewDate + ", rFileNo=" + rFileNo
				+ ", rFileName=" + rFileName + ", rFileSize=" + rFileSize + ", rFileType=" + rFileType + ", rFileDate="
				+ rFileDate + ", rFilePath=" + rFilePath + ", rOrifinalFilename=" + rOrifinalFilename
				+ ", rRenameFilename=" + rRenameFilename + ", reviewLikes=" + reviewLikes + "]";
	}
	
}
