package com.bukke.spring.notice.domain;

public class NoticeSearch {

	private String noticeCategory;
	private String noticeKeyword;
	
	public NoticeSearch() {
	}

	public String getNoticeCategory() {
		return noticeCategory;
	}

	public void setNoticeCategory(String noticeCategory) {
		this.noticeCategory = noticeCategory;
	}

	public String getNoticeKeyword() {
		return noticeKeyword;
	}

	public void setNoticeKeyword(String noticeKeyword) {
		this.noticeKeyword = noticeKeyword;
	}

	@Override
	public String toString() {
		return "NoticeSearch [noticeCategory=" + noticeCategory + ", noticeKeyword=" + noticeKeyword + "]";
	}

	
}
