package com.bukke.notice.domain;

import java.sql.Date;

public class Notice {

	private int nFileNum; //사진번호
	private int noticeNo; //게시글번호
	private String nFileName; //사진이름
	private int nFileSize; //사진크기
	private String nFileType; //파일형식
	private Date nFileDate; //업로드날짜
	private String nFilePath; //사진경로
	private String nOriginalFilename; //기존파일이름
	private String nRenameFilename; //변경된파일이름
	private String noticeTitle; //공지사항제목
	private String noticeContents; //공지사항내용
	private Date noticeDate; //작성일
	

	public Notice() {}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getnFileName() {
		return nFileName;
	}

	public void setnFileName(String nFileName) {
		this.nFileName = nFileName;
	}

	public int getnFileSize() {
		return nFileSize;
	}

	public void setnFileSize(int nFileSize) {
		this.nFileSize = nFileSize;
	}

	public String getnFileType() {
		return nFileType;
	}

	public void setnFileType(String nFileType) {
		this.nFileType = nFileType;
	}

	public Date getnFileDate() {
		return nFileDate;
	}

	public void setnFileDate(Date nFileDate) {
		this.nFileDate = nFileDate;
	}

	public String getnFilePath() {
		return nFilePath;
	}

	public void setnFilePath(String nFilePath) {
		this.nFilePath = nFilePath;
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

	@Override
	public String toString() {
		return "Notice [noticeNo=" + noticeNo + ", nFileName=" + nFileName + ", nFileSize=" + nFileSize + ", nFileType="
				+ nFileType + ", nFileDate=" + nFileDate + ", nFilePath=" + nFilePath + ", nOriginalFilename="
				+ nOriginalFilename + ", nRenameFilename=" + nRenameFilename + ", noticeTitle=" + noticeTitle
				+ ", noticeContents=" + noticeContents + ", noticeDate=" + noticeDate + "]";
	}
	
	
}
