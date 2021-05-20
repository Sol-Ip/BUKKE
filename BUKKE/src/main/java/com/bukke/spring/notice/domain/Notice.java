package com.bukke.spring.notice.domain;

import java.sql.Date;

public class Notice {

	private int noticeNo; // 게시글번호
	private String memberId; //관리자
	private String noticeTitle; // 공지사항제목
	private String noticeContents; // 공지사항내용
	private Date noticeDate; // 작성일
	private String noticeStatus; // 공지사항상태여부
	private String nOriginalFilename; // 기존파일이름
	private String nRenameFilename; // 변경된파일이름
	

	public Notice() {}


	public int getNoticeNo() {
		return noticeNo;
	}


	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}


	public String getMemberId() {
		return memberId;
	}


	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}


	public String getNoticeTitle() {
		return noticeTitle;
	}


	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}


	public String getNoticeContents() {
		return noticeContents;
	}


	public void setNoticeContents(String noticeContents) {
		this.noticeContents = noticeContents;
	}


	public Date getNoticeDate() {
		return noticeDate;
	}


	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}


	public String getNoticeStatus() {
		return noticeStatus;
	}


	public void setNoticeStatus(String noticeStatus) {
		this.noticeStatus = noticeStatus;
	}


	public String getnOriginalFilename() {
		return nOriginalFilename;
	}


	public void setnOriginalFilename(String nOriginalFilename) {
		this.nOriginalFilename = nOriginalFilename;
	}


	public String getnRenameFilename() {
		return nRenameFilename;
	}


	public void setnRenameFilename(String nRenameFilename) {
		this.nRenameFilename = nRenameFilename;
	}


	@Override
	public String toString() {
		return "Notice [noticeNo=" + noticeNo + ", memberId=" + memberId + ", noticeTitle=" + noticeTitle
				+ ", noticeContents=" + noticeContents + ", noticeDate=" + noticeDate + ", noticeStatus=" + noticeStatus
				+ ", nOriginalFilename=" + nOriginalFilename + ", nRenameFilename=" + nRenameFilename + "]";
	}


	
	
	
}
